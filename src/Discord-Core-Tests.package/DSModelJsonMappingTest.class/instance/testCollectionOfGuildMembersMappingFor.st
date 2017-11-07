tests - message
testCollectionOfGuildMembersMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfGuildMembersOne.
	result := self read: jsonString as: #CollectionOfGuildMember mappedTo: #collectionOfGuildMembersMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSGuildMember.
	jsonResult := self write: result mappedTo: #collectionOfGuildMembersMappingFor:.
	self assert: jsonResult equals: jsonString.