tests - message
testCollectionOfAttachmentsMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonCollectionOfAttachmentsOne.
	result := self read: jsonString as: #CollectionOfAttachments mappedTo: #collectionOfAttachmentsMappingFor:.
	self assert: result class equals: Array.
	self assert: result size equals: 1.
	self assert: result first class equals: DSAttachment.
	jsonResult := self write: result mappedTo: #collectionOfAttachmentsMappingFor:.
	self assert: jsonResult equals: jsonString.