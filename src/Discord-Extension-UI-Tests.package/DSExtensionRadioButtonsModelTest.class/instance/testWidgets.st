tests
testWidgets
	model := self newTestedObject.
	model addRadioButtonIdentified: #rbOne.
	model addRadioButtonIdentified: #rbTwo.
	self assert: model widgets keys asArray equals: #( 'rbOne' 'rbTwo' ).