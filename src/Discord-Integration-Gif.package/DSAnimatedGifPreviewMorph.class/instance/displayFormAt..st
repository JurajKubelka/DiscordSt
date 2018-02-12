actions
displayFormAt: requestedIndex 
	| displayIndex |
	displayIndex := self reader forms size min: requestedIndex.
	self sliderIndex: displayIndex.
	self updateSlider.
	self updatePreview.