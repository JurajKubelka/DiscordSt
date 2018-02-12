initialization
initialize
	super initialize.
	sliderIndex := 1.
	self addMorphBack: self newSliderMorph.
	self addMorphBack: self newPreviewMorph.
	self image eventHandler: MorphicEventHandler new.