package world

import (
	"errors"
	"sync"
)

var (
	ErrServerCapacityReached = errors.New("capacity of the server was reached")
)

// PlayerManager is responsible for allocating connection space for
// all incoming players and handling the capacity of the server
type PlayerManager struct {
	playersMutex sync.Mutex
	players      map[string]struct{}

	capacity int
}

func NewPlayerManager(capacity int) *PlayerManager {
	return &PlayerManager{
		players:  map[string]struct{}{},
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

	pm.players[id] = struct{}{}

	pm.playersMutex.Unlock()

	return nil
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
