visiting
visitDSSendScreenshotsAttachment: aDSSendScreenshotsAttachment 
	| form |
	aDSSendScreenshotsAttachment isSelected ifFalse: [ ^ self ].
	aDSSendScreenshotsAttachment hasSelectedForms ifFalse: [ ^ self ].
	form := aDSSendScreenshotsAttachment form.
	form extent isZero ifFalse: [ 
		"Send static images as one big image"
		messageBuilder embedImageForm: form ].
	aDSSendScreenshotsAttachment screenshots do: [ :eachScreenshot | 
		eachScreenshot accept: self ].