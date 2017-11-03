tests - message
testCollectionOfRolesMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfRolesOne.
	result := self read: jsonString as: #CollectionOfRoles mappedTo: #collectionOfRolesMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSRole.
	jsonResult := self write: result mappedTo: #collectionOfRolesMappingFor:.
	self assert: jsonResult equals: jsonString.