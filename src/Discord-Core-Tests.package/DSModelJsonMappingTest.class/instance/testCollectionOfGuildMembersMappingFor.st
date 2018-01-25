tests - message
testCollectionOfGuildMembersMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfGuildMembersOne.
	result := self read: jsonString as: #CollectionOfGuildMembers mappedTo: #collectionOfGuildMembersMappingFor:.
	self assert: result class equals: DSGuildMembers.
	self assert: result size equals: 1.
	self assert: result first class equals: DSGuildMember.
	jsonResult := self write: result mappedTo: #collectionOfGuildMembersMappingFor:.
	self assert: jsonResult equals: jsonString.