initialization
initialize
	super initialize.
	writeMutex := Mutex new.
	readMutex := Mutex new.