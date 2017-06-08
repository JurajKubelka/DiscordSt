tests
testToken
	"Set and get token"
	client := self newClient.
	client token: self tokenString.
	self assert: client token equals: self tokenString.
