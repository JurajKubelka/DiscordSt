visiting
visitDSSendScreenshotsAttachment: aDSSendScreenshotsAttachment 
	aDSSendScreenshotsAttachment isSelected ifFalse: [ ^ self ].
	aDSSendScreenshotsAttachment hasSelectedForms ifFalse: [ ^ self ].
	messageBuilder embedImageForm: aDSSendScreenshotsAttachment form.