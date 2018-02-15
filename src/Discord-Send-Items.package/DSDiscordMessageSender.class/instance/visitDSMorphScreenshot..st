visiting
visitDSMorphScreenshot: aDSMorphScreenshot 
	aDSMorphScreenshot isSelected ifFalse: [ ^ self ].
	"ignore static images as they are included in one big image"