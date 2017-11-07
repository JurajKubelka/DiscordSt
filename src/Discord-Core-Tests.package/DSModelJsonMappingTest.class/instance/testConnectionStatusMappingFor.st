tests - guild
testConnectionStatusMappingFor
	| result jsonResult jsonString |
	jsonString := '"idle"'.
	result := self read: jsonString as: DSConnectionStatus mappedTo: #connectionStatusMappingFor:.
	self assert: result class equals: DSIdleStatus.
	jsonResult := self write: result mappedTo: #connectionStatusMappingFor:.
	self assert: jsonResult equals: jsonString.