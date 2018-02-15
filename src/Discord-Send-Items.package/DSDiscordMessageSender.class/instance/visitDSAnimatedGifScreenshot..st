visiting
visitDSAnimatedGifScreenshot: aDSAnimatedGifScreenshot 
	aDSAnimatedGifScreenshot isSelected ifFalse: [ ^ self ].
	aDSAnimatedGifScreenshot bytes ifNil: [ ^ self ].
	messageBuilder hasEmbedImages 
		ifTrue: [ 
			messageBuilder attachGifBytes: aDSAnimatedGifScreenshot bytes ]
		ifFalse: [ 
			messageBuilder embedImageGIfBytes: aDSAnimatedGifScreenshot bytes ]