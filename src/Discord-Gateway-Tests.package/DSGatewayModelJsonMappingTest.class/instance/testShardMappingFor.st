tests - basic
testShardMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonShard.
	result := self read: jsonString as: DSGatewayShard mappedTo: #shardMappingFor:.
	self assert: result class equals: DSGatewayShard.
	self assert: result id equals: 1.
	self assert: result numberOfShards equals: 10.
	jsonResult := self write: result mappedTo: #shardMappingFor:.
	self assert: jsonResult equals: jsonString.