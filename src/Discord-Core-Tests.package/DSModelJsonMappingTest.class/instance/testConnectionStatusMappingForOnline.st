tests - guild
testConnectionStatusMappingForOnline
	| result jsonResult jsonString |
	jsonString := '"online"'.
	result := self read: jsonString as: DSConnectionStatus mappedTo: #connectionStatusMappingFor:.
	self assert: result class equals: DSOnlineStatus.
	jsonResult := self write: result mappedTo: #connectionStatusMappingFor:.
	self assert: jsonResult equals: jsonString.