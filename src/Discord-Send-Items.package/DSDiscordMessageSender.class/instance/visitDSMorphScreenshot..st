visiting
visitDSMorphScreenshot: aDSMorphScreenshot 
	| form |
	aDSMorphScreenshot isSelected ifFalse: [ ^ self ].
	form := aDSMorphScreenshot form.
	form extent isZero ifFalse: [
		messageBuilder attachForm: form ].