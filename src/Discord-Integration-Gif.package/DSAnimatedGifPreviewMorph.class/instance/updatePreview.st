private
updatePreview
	| form |
	form := self reader forms at: self sliderIndex.
	self image form: form.