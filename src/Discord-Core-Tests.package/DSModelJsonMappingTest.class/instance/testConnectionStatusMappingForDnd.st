tests - guild
testConnectionStatusMappingForDnd
	| result jsonResult jsonString |
	jsonString := '"dnd"'.
	result := self read: jsonString as: DSConnectionStatus mappedTo: #connectionStatusMappingFor:.
	self assert: result class equals: DSDoNotDisturbStatus.
	jsonResult := self write: result mappedTo: #connectionStatusMappingFor:.
	self assert: jsonResult equals: jsonString.