tests - channel
testUnspecifiedChannelMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonAllPropertiesChannel.
	result := self read: jsonString as: DSUnspecifiedChannel mappedTo: #unspecifiedChannelMappingFor:.
	self assert: result class equals: DSUnspecifiedChannel.
	self assert: result id equals: '376680041881962816'.
	self assert: result type class equals: DSChannelGuildTextType.
	self assert: result guildId equals: '376204541188962822'.
	self assert: result position equals: 1.
	self assert: result permissionOverwrites class equals: Array.
	self assert: result name equals: 'the name of the channel (2-100 characters)'.
	self assert: result topic equals: 'the channel topic (0-1024 characters)'.
	self deny: result nsfw.
	self assert: result lastMessageId equals: '372200541188962021'.
	self assert: result bitrate equals: 1204.
	self assert: result userLimit equals: 24.
	self assert: result recipients class equals: Array.
	self assert: result icon equals: '309350229021696111'.
	self assert: result ownerId equals: '319350229021696243'.
	self assert: result applicationId equals: '319347229021696269'.
	self assert: result parentId equals: '371083041588962823'.
	jsonResult := self write: result mappedTo: #unspecifiedChannelMappingFor:.
	self assert: jsonResult equals: jsonString.