tests - guild
testVoiceStateMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonVoiceState.
	result := self read: jsonString as: DSVoiceState mappedTo: #voiceStateMappingFor:.
	self assert: result class equals: DSVoiceState.
	self assert: result guildId equals: '157733188964188161'.
	self assert: result channelId equals: '157733188964188160'.
	self assert: result userId equals: '80351110224678912'.
	self assert: result sessionId equals: '90326bd25d71d39b9ef95b299e3872ff'.
	self deny: result deaf.
	self deny: result mute.
	self deny: result selfDeaf.
	self assert: result selfMute.
	self deny: result suppress.
	jsonResult := self write: result mappedTo: #voiceStateMappingFor:.
	self assert: jsonResult equals: jsonString.