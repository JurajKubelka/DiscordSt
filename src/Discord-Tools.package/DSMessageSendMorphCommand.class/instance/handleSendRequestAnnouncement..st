as yet unclassified
handleSendRequestAnnouncement: aDSScreenshotSendRequestAnnouncement 
	| context selectedRegistry |
	self sendAction ifNil: [ ^ self ].
	message := aDSScreenshotSendRequestAnnouncement morph message.
	isMorphSelected := aDSScreenshotSendRequestAnnouncement morph isScreenshotSelected.
	context := self newContextFrom: aDSScreenshotSendRequestAnnouncement.
	selectedRegistry := aDSScreenshotSendRequestAnnouncement morph selectedRegistry.
	selectedRegistry send: context.
	self halt.
	"self sendAction cull: self"