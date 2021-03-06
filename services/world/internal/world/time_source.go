package world

import "time"

// TimeSource abstracts the Now method
type TimeSource interface {
	Now() time.Time
}

// DefaultTimeSource is using the default time library
type DefaultTimeSource struct{}

// Now returns time.Now() for the DefaultTimeSource
func (t DefaultTimeSource) Now() time.Time {
	return time.Now()
}

// StaticTimeSource caches the given time and returns it with Now()
type StaticTimeSource struct {
	T time.Time
}

// Now returns the cached time within the StaticTimeSource
func (t StaticTimeSource) Now() time.Time {
	return t.T
}

// TimeNow either returns the time source time or time.Now
func TimeNow(tsource ...TimeSource) time.Time {
	if len(tsource) > 0 {
		return tsource[0].Now()
	}

	return time.Now()
}
