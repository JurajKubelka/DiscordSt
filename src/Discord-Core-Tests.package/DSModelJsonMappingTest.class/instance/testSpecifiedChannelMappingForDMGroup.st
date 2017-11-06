tests - channel
testSpecifiedChannelMappingForDMGroup
	| result jsonResult jsonString |
	jsonString := self classToTest jsonChannelDirectMessageGroup.
	result := self read: jsonString as: #SpecifiedChannel mappedTo: #specifiedChannelMappingFor:.
	self assert: result class equals: DSDirectMessageGroupChannel.
	self assert: result id equals: '319674150115710528'.
	self assert: result name equals: 'Some test channel'.
	self assert: result recipients class equals: Array.
	self assert: result lastMessageId equals: '3343820033257021450'.
	self assert: result icon equals: 'an icon hash'.
	self assert: result ownerId equals: '82198810841029460'.
	jsonResult := self write: result mappedTo: #specifiedChannelMappingFor:.
	self assert: jsonResult equals: jsonString.