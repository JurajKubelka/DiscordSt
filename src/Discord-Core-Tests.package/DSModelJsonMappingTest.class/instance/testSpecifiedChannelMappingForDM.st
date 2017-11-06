tests - channel
testSpecifiedChannelMappingForDM
	| result jsonResult jsonString |
	jsonString := self classToTest jsonChannelDirectMessage.
	result := self read: jsonString as: #SpecifiedChannel mappedTo: #specifiedChannelMappingFor:.
	self assert: result class equals: DSDirectMessageChannel.
	self assert: result id equals: '319674150115610528'.
	self assert: result recipients class equals: Array.
	self assert: result lastMessageId equals: '3343820033257021450'.
	jsonResult := self write: result mappedTo: #specifiedChannelMappingFor:.
	self assert: jsonResult equals: jsonString.