accessing
session
	"Get session object that keeps email, password and token for the Discord communication."
	^ session ifNil: [ session := self newSession ]