tests - message
testUserMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonUser.
	result := self read: jsonString as: DSUser mappedTo: #userMappingFor:.
	self assert: result class equals: DSUser.
	self assert: result id equals: '80351110224678912'.
	self assert: result username equals: 'Nelly'.
	self assert: result discriminator equals: '1337'.
	self assert: result avatarHash equals: '8342729096ea3675442027381ff50dfe'.
	self deny: result isBot.
	self deny: result isMfaEnabled.
	self assert: result isVerified.
	self assert: result email equals: 'nelly@discordapp.com'.
	jsonResult := self write: result mappedTo: #userMappingFor:.
	self assert: jsonResult equals: jsonString.