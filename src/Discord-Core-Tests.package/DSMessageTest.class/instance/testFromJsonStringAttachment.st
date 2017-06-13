tests
testFromJsonStringAttachment
	"Check attachment object"
	| api |
	api := self newApi.
	message := self messageClass fromJsonString: self messageObjectWithAttachmentString api: api.
	self assert: message api notNil.
	self assert: message api == api.
	self assert: message attachments isArray.
	self assert: message attachments size equals: 1.
	self assert: message attachments first isAttachment.
	self assert: message attachments first api notNil.
	self assert: message attachments first api == api.
	self assert: message hasAttachments.