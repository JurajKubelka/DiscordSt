tests - message
testRoleMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonRole.
	result := self read: jsonString as: DSRole mappedTo: #roleMappingFor:.
	self assert: result class equals: DSRole.
	self assert: result id equals: '41771983423143936'.
	self assert: result name equals: 'WE DEM BOYZZ!!!!!!'.
	self assert: result color equals: (Color r: 0.20400000000000001 g: 0.596 b: 0.859 alpha: 1.0).
	self assert: result hoist.
	self assert: result position equals: 1.
	self assert: result permissions equals: 66321471.
	self deny: result managed.
	self deny: result mentionable.
	jsonResult := self write: result mappedTo: #roleMappingFor:.
	self assert: jsonResult equals: jsonString.