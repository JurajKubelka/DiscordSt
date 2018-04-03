visiting
visitDSAnimatedGifScreenshot: aDSAnimatedGifScreenshot 
	aDSAnimatedGifScreenshot isSelected ifFalse: [ ^ self ].
	aDSAnimatedGifScreenshot bytes ifNil: [ ^ self ].
	messageBuilder attachGifBytes: aDSAnimatedGifScreenshot bytes