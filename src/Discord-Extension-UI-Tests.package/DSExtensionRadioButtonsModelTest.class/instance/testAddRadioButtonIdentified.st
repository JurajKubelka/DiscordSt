tests
testAddRadioButtonIdentified
	model := self newTestedObject.
	model addRadioButtonIdentified: #rbOne.
	self assert: model rbOne notNil.