tests - guild
testPresenceUpdateMappingForWithGameNull
	| result jsonResult jsonString |
	jsonString := self classToTest jsonPresenceUpdateWithGameNull.
	result := self read: jsonString as: DSPresenceUpdate mappedTo: #presenceUpdateMappingFor:.
	self assert: result class equals: DSPresenceUpdate.
	self assert: result user class equals: DSUser.
	self assert: result roleIds isNil.
	self assert: result guildId isNil.
	self assert: result game isNil.
	self assert: result status class equals: DSIdleStatus.
	jsonResult := self write: result mappedTo: #presenceUpdateMappingFor:.
	self assert: jsonResult equals: '{"user":{"id":"286153065164308480"},"status":"idle"}'.