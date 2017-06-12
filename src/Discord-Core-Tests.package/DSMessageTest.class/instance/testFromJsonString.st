tests
testFromJsonString
	message := DSMessage fromJsonString: self messageObjectString.
	self assert: message author isUser.
	self assert: message author username equals: 'user one'.
	