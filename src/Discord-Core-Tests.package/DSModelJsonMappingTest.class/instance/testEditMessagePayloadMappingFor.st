tests - message
testEditMessagePayloadMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonEditMessagePayload.
	result := self read: jsonString as: NeoJSONObject mappedTo: #editMessagePayloadMappingFor:.
	self assert: result class equals: NeoJSONObject.
	self assert: result content equals: 'any string'.
	self assert: result embed class equals: DSEmbed.
	jsonResult := self write: result mappedTo: #editMessagePayloadMappingFor:.
	self assert: jsonResult equals: jsonString.