as yet unclassified
visitDSAnimatedGifScreenshot: aDSAnimatedGifScreenshot 
	aDSAnimatedGifScreenshot isSelected ifFalse: [ ^ self ].
	messageBuilder hasEmbedImages 
		ifTrue: [ 
			messageBuilder attachGifBytes: aDSAnimatedGifScreenshot bytes ]
		ifFalse: [ 
			messageBuilder embedImageGIfBytes: aDSAnimatedGifScreenshot bytes ]