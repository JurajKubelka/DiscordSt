visiting
visitDSSendMorphScreenshotsItem: aDSSendScreenshotsItem 
	aDSSendScreenshotsItem hasSelectedForms ifFalse: [ ^ self ].
	messageBuilder embedImageForm: aDSSendScreenshotsItem form.