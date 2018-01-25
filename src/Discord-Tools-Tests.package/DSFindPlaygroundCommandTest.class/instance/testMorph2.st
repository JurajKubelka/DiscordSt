tests
testMorph2
	"Search for a specific playground."
	| script page |
	script := 'World submorphs'.
	page := GTPlayPage new saveContent: script; yourself.
	model := GTPlayground new.
	window := model openOn: page.
	command := self classToTest new.
	command model: model.
	result := command execute; morph.
	self assert: result == window.