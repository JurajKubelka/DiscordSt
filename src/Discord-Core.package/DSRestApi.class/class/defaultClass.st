defaults
defaultClass
	"Return default class responsible for Discord WebSocket and API communication."
	^ self subclasses detectMax: #versionNumber