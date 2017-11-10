accessing - cache
cacheAt: key
	"Return value at key or nil."
	^ self cache at: key ifAbsent: nil