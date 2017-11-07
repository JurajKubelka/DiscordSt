tests - guild
testPresenceUpdateMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonPresenceUpdate.
	result := self read: jsonString as: DSPresenceUpdate mappedTo: #presenceUpdateMappingFor:.
	self assert: result class equals: DSPresenceUpdate.
	self assert: result user class equals: DSUser.
	self assert: result roleIds class equals: Array.
	self assert: result roleIds size equals: 1.
	self assert: result roleIds first equals: '80351110222677913'.
	self assert: result guildId equals: '60251110222617911'.
	self assert: result status class equals: DSIdleStatus.
	jsonResult := self write: result mappedTo: #presenceUpdateMappingFor:.
	self assert: jsonResult equals: jsonString.