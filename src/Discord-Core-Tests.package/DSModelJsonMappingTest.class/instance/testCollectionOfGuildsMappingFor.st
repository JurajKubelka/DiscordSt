tests - guild
testCollectionOfGuildsMappingFor
	| result jsonString |
	jsonString := self classToTest jsonCollectionOfGuildsOne.
	result := self read: jsonString as: #CollectionOfGuilds mappedTo: #collectionOfGuildsMappingFor:.
	self assert: result class equals: DSGuilds.
	self assert: result size equals: 1.
	self assert: result first class equals: DSGuild.
	"jsonResult := self write: result mappedTo: #collectionOfGuildsMappingFor:.
	self assert: jsonResult equals: jsonString."