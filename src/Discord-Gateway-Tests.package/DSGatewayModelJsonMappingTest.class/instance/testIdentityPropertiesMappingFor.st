tests - basic
testIdentityPropertiesMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonIdentityProperties.
	result := self read: jsonString as: DSGatewayIdentityProperties mappedTo: #identityPropertiesMappingFor:.
	self assert: result class equals: DSGatewayIdentityProperties.
	self assert: result os equals: 'MacOSX'.
	self assert: result browser equals: 'DiscordSt (https://github.com/JurajKubelka/DiscordSt, 0.1.0-dev-60519)'.
	self assert: result device equals: 'Pharo6.0 of 13 May 2016 update 60519'.
	self assert: result referrer equals: ''.
	self assert: result referringDomain equals: ''.
	jsonResult := self write: result mappedTo: #identityPropertiesMappingFor:.
	self assert: jsonResult equals: jsonString.