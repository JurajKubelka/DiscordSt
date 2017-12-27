visiting
visitDSSendMorphScreenshotsItem: aDSSendScreenshotsItem 
	aDSSendScreenshotsItem hasSelectedForms ifFalse: [ ^ self ].
	webhook embedImageForm: aDSSendScreenshotsItem form.