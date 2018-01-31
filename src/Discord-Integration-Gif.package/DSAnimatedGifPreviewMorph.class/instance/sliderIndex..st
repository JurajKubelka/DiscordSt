accessing
sliderIndex: anObject
	sliderIndex = anObject ifTrue: [ ^ self ].
	sliderIndex := anObject.
	self updatePreview.