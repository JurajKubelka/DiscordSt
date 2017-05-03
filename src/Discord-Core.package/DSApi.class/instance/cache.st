accessing
cache
	"Return dictionary that serves as a cache."
	^ cache ifNil: [ cache := SmallDictionary new ]