tests - message
testAttachmentMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonAttachment.
	result := self read: jsonString as: DSAttachment mappedTo: #attachmentMappingFor:.
	self assert: result class equals: DSAttachment.
	self assert: result id equals: '376014041878912856'.
	self assert: result filename equals: 'file.jpg'.
	self assert: result fileSize equals: 32143.
	self assert: result url equals: 'http://cdn.example.com/attachment.jpg'.
	self assert: result proxyUrl equals: 'http://proxy.example.com/attachment.jpg'.
	self assert: result height equals: 512.
	self assert: result width equals: 768.
	jsonResult := self write: result mappedTo: #attachmentMappingFor:.
	self assert: jsonResult equals: jsonString.