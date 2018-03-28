visiting
visitDSSendScreenshotsAttachment: aDSSendScreenshotsAttachment 
	aDSSendScreenshotsAttachment isSelected ifFalse: [ ^ self ].
	aDSSendScreenshotsAttachment hasSelectedForms ifFalse: [ ^ self ].
	aDSSendScreenshotsAttachment screenshots do: [ :eachScreenshot | 
		eachScreenshot accept: self ].