private
updateSlider
	self slider 
		update: { #max: . self reader forms size };
		update: #sliderIndex;
		update: #hasForms.