private
doOneRecord
	| form frame |
	continue ifFalse: [ ^ self ].
	form := Form fromDisplay: rectangle.
	frame := AnimatedImageFrame new.
	frame
		form: form;
		delay: 20.
	writer nextPutFrame: frame.