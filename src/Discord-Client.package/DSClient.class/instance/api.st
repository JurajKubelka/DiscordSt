accessing
api
	"Return object responsible for Discord WebSocket and API communication."
	^ api ifNil: [ api := self newApi ]