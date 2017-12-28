tests
testMarkdown
	"Search for a specific playground."
	| script page playground command result |
	script := 'World submorphs'.
	page := GTPlayPage new saveContent: script; yourself.
	playground := GTPlayground new.
	playground entity: page.
	command := self classToTest new.
	command playground: playground.
	result := command execute; markdown.
	self 
		assert: result 
		equals: (String cr join: #( '```Smalltalk' 'World submorphs' '```' )), String cr.
	self assert: result isString.