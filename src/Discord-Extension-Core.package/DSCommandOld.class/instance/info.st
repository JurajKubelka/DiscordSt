extensions
info
	"Get all extra information that should be sent to Discord.
	It may be added by command extensions."
	^ info ifNil: [ info := Dictionary new ]