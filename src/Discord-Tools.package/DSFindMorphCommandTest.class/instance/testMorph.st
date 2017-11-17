tests
testMorph
	model := Object new.
	morph := 'I am a test case' asMorph.
	window := morph openInWindow.
	command := self classToTest new.
	window model: model.
	command model: model.
	result := command execute; morph.
	self assert: result == window.