tests
testClasses
	"Search for used classes."
	| script command result |
	script := '| morphs command |', String cr, 'morphs := World submorphs.', String cr, 'command := DSFindInspectorCommand new model: Object new.'.
	command := self classToTest new.
	command codeSnippet: script.
	result := command execute; classes.
	self assert: result notNil.
	self assert: result size equals: 2.
	self assert: result equals: { DSFindInspectorCommand. Object }.