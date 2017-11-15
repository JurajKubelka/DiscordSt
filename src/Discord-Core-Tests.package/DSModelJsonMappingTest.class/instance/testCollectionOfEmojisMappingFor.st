tests - message
testCollectionOfEmojisMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfEmojisOne.
	result := self read: jsonString as: #CollectionOfEmojis mappedTo: #collectionOfEmojisMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSEmoji.
	jsonResult := self write: result mappedTo: #collectionOfEmojisMappingFor:.
	self assert: jsonResult equals: jsonString.