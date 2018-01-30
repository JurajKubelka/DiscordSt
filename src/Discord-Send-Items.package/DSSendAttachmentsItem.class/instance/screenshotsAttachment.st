accessing
screenshotsAttachment
	"Ensure there is a screenshots attachment"
	^ self attachments 
		detect: [ :eachAttachment | eachAttachment class = DSSendScreenshotsAttachment ]
		ifFound: [ :attachment | attachment ]
		ifNone: [ self add: DSSendScreenshotsAttachment new ]