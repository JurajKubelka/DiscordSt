accessing
api
	"Return object responsible for Discord REST API communication."
	^ api ifNil: [ api := self newApi ]