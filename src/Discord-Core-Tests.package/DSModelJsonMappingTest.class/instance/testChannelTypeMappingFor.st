tests - channel
testChannelTypeMappingFor
	| result jsonResult jsonString |
	jsonString := '0'.
	result := self read: jsonString as: DSChannelType mappedTo: #channelTypeMappingFor:.
	self assert: result class equals: DSChannelGuildTextType.
	jsonResult := self write: result mappedTo: #channelTypeMappingFor:.
	self assert: jsonResult equals: jsonString.