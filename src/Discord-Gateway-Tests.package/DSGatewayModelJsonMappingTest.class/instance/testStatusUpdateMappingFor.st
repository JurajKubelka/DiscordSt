tests - basic
testStatusUpdateMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonStatusUpdate.
	result := self read: jsonString as: DSGatewayStatusUpdate mappedTo: #statusUpdateMappingFor:.
	self assert: result class equals: DSGatewayStatusUpdate.
	self assert: result since class equals: DateAndTime.
	self assert: result game class equals: DSGame.
	self assert: result status class equals: DSInvisibleStatus.
	self assert: result awayFromKeyboard.
	jsonResult := self write: result mappedTo: #statusUpdateMappingFor:.
	self assert: jsonResult equals: jsonString.