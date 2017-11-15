tests
testFromJsonStringAttachment
	"Check attachment object"
	| api |
	api := self newRestApi.
	message := self coreModelJsonMapping read: DSMessage withMapping: #messageMappingFor: on: self coreModelJsonMapping jsonMessage readStream.
	message restApi: api.
	self assert: message restApi notNil.
	self assert: message restApi == api.
	self assert: message attachments isArray.
	self assert: message attachments size equals: 1.
	self assert: message attachments first isAttachment.
	self assert: message attachments first restApi notNil.
	self assert: message attachments first restApi == api.
	self assert: message hasAttachments.