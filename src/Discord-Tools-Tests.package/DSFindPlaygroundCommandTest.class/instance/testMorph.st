tests
testMorph
	| script page |
	model := Object new.
	script := 'World submorphs'.
	page := GTPlayPage new saveContent: script; yourself.
	window := GTPlayground openOn: page.
	(window model presentations first panes flatCollect: #presentations) 
			first selection: model.
	command := self classToTest new.
	command model: model.
	result := command execute; morph.
	self assert: result == window.