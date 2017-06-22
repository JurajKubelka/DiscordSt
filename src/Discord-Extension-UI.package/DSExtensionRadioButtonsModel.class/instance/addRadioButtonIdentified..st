api
addRadioButtonIdentified: aString 
	"Add new Radio Button to the view"
	| model |
	model := self newRadioButton.
	self assign: model to: aString.
	self group addRadioButton: model. 
	^ model