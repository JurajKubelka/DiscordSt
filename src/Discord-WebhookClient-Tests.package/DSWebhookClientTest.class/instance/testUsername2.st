tests
testUsername2
	client := self classToTest new 
		username: self username;
		message: self messageString;
		yourself.
	self assert: client post username equals: self username.
	self assert: client post content equals: self messageString.