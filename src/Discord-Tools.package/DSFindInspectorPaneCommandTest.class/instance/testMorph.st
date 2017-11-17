tests
testMorph
	model := Object new.
	window := GTInspector openOn: Morph new.
	(window model panes flatCollect: #presentations) 
			first selection: model.
	command := self classToTest new.
	command model: model.
	result := command execute; morph.
	self assert: result == window.