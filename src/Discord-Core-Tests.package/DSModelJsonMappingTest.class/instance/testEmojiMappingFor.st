tests - message
testEmojiMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonEmoji.
	result := self read: jsonString as: DSEmoji mappedTo: #emojiMappingFor:.
	self assert: result class equals: DSEmoji.
	self assert: result id equals: '41274983523343936'.
	self assert: result name equals: 'emoji name'.
	self assert: result roles class equals: Array.
	self assert: result user class equals: DSUser.
	self assert: result requireColons.
	self deny: result managed.
	jsonResult := self write: result mappedTo: #emojiMappingFor:.
	self assert: jsonResult equals: jsonString.