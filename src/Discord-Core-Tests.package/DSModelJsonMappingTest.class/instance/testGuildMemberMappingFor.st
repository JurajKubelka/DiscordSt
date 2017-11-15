tests - guild
testGuildMemberMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonGuildMember.
	result := self read: jsonString as: DSGuildMember mappedTo: #guildMemberMappingFor:.
	self assert: result class equals: DSGuildMember.
	self assert: result user class equals: DSUser.
	self assert: result nick equals: 'this users guild nickname (if one is set)'.
	self assert: result roleIds class equals: Array.
	self assert: result roleIds size equals: 1.
	self assert: result roleIds first equals: '80351110222677913'.
	self assert: result joinedAt equals: '2015-04-26T06:26:56.936000+00:00' asDateAndTime.
	self deny: result deaf.
	self deny: result mute.
	jsonResult := self write: result mappedTo: #guildMemberMappingFor:.
	self assert: jsonResult equals: jsonString.