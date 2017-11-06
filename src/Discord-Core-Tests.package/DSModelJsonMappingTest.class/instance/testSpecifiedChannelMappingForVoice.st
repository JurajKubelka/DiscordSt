tests - channel
testSpecifiedChannelMappingForVoice
	| result jsonResult jsonString |
	jsonString := self classToTest jsonChannelGuildVoice.
	result := self read: jsonString as: #SpecifiedChannel mappedTo: #specifiedChannelMappingFor:.
	self assert: result class equals: DSGuildVoiceChannel.
	self assert: result id equals: '155101607195836416'.
	self assert: result guildId equals: '41771983423143937'.
	self assert: result position equals: 5.
	self assert: result permissionOverwrites class equals: Array.
	self assert: result name equals: 'ROCKET CHEESE'.
	self assert: result userLimit equals: 0.
	self assert: result parentId equals: '399942396007890945'.
	jsonResult := self write: result mappedTo: #specifiedChannelMappingFor:.
	self assert: jsonResult equals: jsonString.