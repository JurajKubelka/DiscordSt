tests
testCodeSnippet
	"Search for a specific playground."
	| script page playground command result |
	script := 'World submorphs'.
	page := GTPlayPage new saveContent: script; yourself.
	playground := GTPlayground new.
	playground entity: page.
	command := self classToTest new.
	command playground: playground.
	result := command execute; codeSnippet.
	self assert: result equals: 'World submorphs'.
	self assert: result isString.