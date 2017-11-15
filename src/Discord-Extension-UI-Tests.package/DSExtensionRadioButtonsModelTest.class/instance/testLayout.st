tests
testLayout
	model := self newTestedObject.
	model addRadioButtonIdentified: #rbOne.
	self assert: model layout notNil.