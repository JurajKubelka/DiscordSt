tests - guild
testGuildMappingFor
	| result jsonString |
	jsonString := self classToTest jsonGuild.
	result := self read: jsonString as: DSGuild mappedTo: #guildMappingFor:.
	self assert: result class equals: DSGuild.
	self assert: result id equals: '41771983423143921'.
	self assert: result name equals: 'guild name (2-100 characters)'.
	self assert: result iconHash equals: 'icon hash'.
	self assert: result splashHash equals: 'splash hash'.
	self assert: result ownerId equals: '41771983763143932'.
	self assert: result region equals: 'voice_region.id'.
	self assert: result afkChannelId equals: '41771983423143920'.
	self assert: result afkTimeout equals: '2017-11-02T15:21:38.579+00:00' asDateAndTime.
	self assert: result embedEnabled.
	self assert: result embedChannelId equals: '41771983423143921'.
	self assert: result verificationLevel equals: 0.
	self assert: result defaultMessageNotifications equals: 1.
	self assert: result explicitContentFilter equals: 2.
	self assert: result roles class equals: Array.
	self assert: result roles first class equals: DSRole.
	self assert: result emojis class equals: Array.
	self assert: result emojis first class equals: DSEmoji.
	self assert: result features equals: 'enabled guild features'.
	self assert: result mfaLevel equals: 1.
	self assert: result applicationId equals: '31771923763143932'.
	self assert: result widgetEnabled.
	self assert: result widgetChannelId equals: '41771983423143921'.
	self assert: result joinedAt equals: '2017-11-03T15:21:38.579+00:00' asDateAndTime.
	self assert: result large.
	self deny: result unavailable.
	self assert: result memberCount equals: 108.
	self assert: result voiceStates class equals: Array.
	self assert: result voiceStates first class equals: DSVoiceState.
	self assert: result members class equals: Array.
	self assert: result members first class equals: DSGuildMember.
	self assert: result channels class equals: Array.
	self assert: result channels first class equals: DSCategoryChannel.
	self assert: result presences class equals: Array.
	self assert: result presences first class equals: DSPresenceUpdate.
	"jsonResult := self write: result mappedTo: #guildMappingFor:.
	self assert: jsonResult equals: jsonString."