tests - channel
testSpecifiedChannelMappingForCategory
	| result jsonResult jsonString |
	jsonString := self classToTest jsonChannelCategory.
	result := self read: jsonString as: #SpecifiedChannel mappedTo: #specifiedChannelMappingFor:.
	self assert: result class equals: DSCategoryChannel.
	self assert: result id equals: '41771983423143939'.
	self assert: result guildId equals: '290926798629997250'.
	self assert: result position equals: 0.
	self assert: result permissionOverwrites class equals: Array.
	self assert: result name equals: 'Test'.
	self deny: result nsfw.
	jsonResult := self write: result mappedTo: #specifiedChannelMappingFor:.
	self assert: jsonResult equals: jsonString.