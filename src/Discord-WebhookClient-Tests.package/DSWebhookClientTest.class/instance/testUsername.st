tests
testUsername
	client := self classToTest new 
		message: self messageString;
		username: self username;
		yourself.
	self assert: client post username equals: self username.
	self assert: client post content equals: self messageString.