tests
testCollectionFromJsonStringAttachment
	"Check attachment object"
	| api |
	api := self newApi.
	message := self messageClass 
		collectionFromJsonString: '[', self messageObjectWithAttachmentString, ']' api: api.
	self assert: message isCollection.
	self assert: message class equals: DSMessages.
	self assert: message size equals: 1.
	self assert: message first api notNil.
	self assert: message first api == api.
	self assert: message first attachments size equals: 1.
	self assert: message first attachments first isAttachment.
	self assert: message first attachments first api notNil.
	self assert: message first attachments first api == api.
	