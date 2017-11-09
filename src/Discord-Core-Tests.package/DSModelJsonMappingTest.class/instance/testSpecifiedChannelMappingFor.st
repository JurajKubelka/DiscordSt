tests - channel
testSpecifiedChannelMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonChannelGuildText.
	result := self read: jsonString as: #SpecifiedChannel mappedTo: #specifiedChannelMappingFor:.
	self assert: result class equals: DSGuildTextChannel.
	self assert: result id equals: '41771983423143937'.
	self assert: result guildId equals: '41771983423143937'.
	self assert: result position equals: 6.
	self assert: result permissionOverwrites class equals: Array.
	self assert: result name equals: 'general'.
	self assert: result topic equals: '24/7 chat about how to gank Mike #2'.
	self assert: result nsfw.
	self assert: result lastMessageId equals: '155117677105512449'.
	self assert: result icon equals: '309350229021696111'.
	self assert: result parentId equals: '41771983423143939'.
	jsonResult := self write: result mappedTo: #specifiedChannelMappingFor:.
	self assert: jsonResult equals: jsonString.