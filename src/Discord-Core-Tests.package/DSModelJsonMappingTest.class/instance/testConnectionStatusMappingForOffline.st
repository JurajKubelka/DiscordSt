tests - guild
testConnectionStatusMappingForOffline
	| result jsonResult jsonString |
	jsonString := '"offline"'.
	result := self read: jsonString as: DSConnectionStatus mappedTo: #connectionStatusMappingFor:.
	self assert: result class equals: DSOfflineStatus.
	jsonResult := self write: result mappedTo: #connectionStatusMappingFor:.
	self assert: jsonResult equals: jsonString.