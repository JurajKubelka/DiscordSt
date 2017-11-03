tests - message
testReactionMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonReaction.
	result := self read: jsonString as: DSReaction mappedTo: #reactionMappingFor:.
	self assert: result class equals: DSReaction.
	self assert: result count equals: 5.
	self assert: result me.
	self assert: result emoji class equals: DSEmoji.
	jsonResult := self write: result mappedTo: #reactionMappingFor:.
	self assert: jsonResult equals: jsonString.