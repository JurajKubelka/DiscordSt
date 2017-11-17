tests
testMorph
	model := Object new.
	window := GTInspector openOn: model.
	command := self classToTest new.
	command model: model.
	result := command execute; morph.
	self assert: result == window.