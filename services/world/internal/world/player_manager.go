package world

import (
	"errors"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"sync"
)

var (
	ErrServerCapacityReached = errors.New("capacity of the server was reached")
)

// PlayerManager is responsible for allocating connection space for
// all incoming players and handling the capacity of the server
type PlayerManager struct {
	playersMutex sync.Mutex
	players      map[string]v1.WorldService_PlayServer

	capacity int
}

func NewPlayerManager(capacity int) *PlayerManager {
	return &PlayerManager{
		players:  map[string]v1.WorldService_PlayServer{},
		capacity: capacity,
	}
}

// TryConnect returns an error if the client can't connect to the server,
// otherwise returns null
func (pm *PlayerManager) TryConnect(id string) error {
	pm.playersMutex.Lock()

	if len(pm.players) >= pm.capacity {
		return ErrServerCapacityReached
	}

	// no need for the stream, clients can handle updates without the stream if they want to
	pm.players[id] = nil

	pm.playersMutex.Unlock()

	return nil
}

// BeginWatch saves the grpc stream of the player so we can send the update messages
// to this socket
func (pm *PlayerManager) BeginWatch(id string, stream v1.WorldService_PlayServer) {
	pm.players[id] = stream
}

// StopWatch cleans up a stream provided by the server, e.g. when it's broken or disconnected
func (pm *PlayerManager) StopWatch(id string) {
	pm.players[id] = nil
}

// GetNotifier returns a notifier that a player may have added by BeginWatch
func (pm *PlayerManager) GetNotifier(id string) v1.WorldService_PlayServer {
	return pm.players[id]
}

// IsAllowed returns true if the player is registered within the server,
// otherwise returns false. The connection to the unallowed player should
// be immediately dropped by the rpc
func (pm *PlayerManager) IsAllowed(id string) bool {
	pm.playersMutex.Lock()
	_, ok := pm.players[id]
	pm.playersMutex.Unlock()

	return ok
}

// Remove makes the player disconnect from the PlayerManager, removing the
// possibility to contact the server without getting an error. The client
// must TryConnect again if they wish to communicate again
func (pm *PlayerManager) Remove(id string) {
	pm.playersMutex.Lock()
	delete(pm.players, id)
	pm.playersMutex.Unlock()
}
