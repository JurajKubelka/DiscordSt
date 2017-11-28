tests
testPackages
	| command result |
	command := self classToTest new.
	command classes: { DSExtractPlaygroundCodeSnippetCommandTest }.
	result := command execute; packages.
	self assert: result notNil.
	self assert: result size equals: 1.
	self assert: result first item equals: DSExtractPlaygroundCodeSnippetCommandTest package.
	self assert: result first isSelected.
	self assert: result first classes size equals: 1.
	self assert: result first classes first item equals: DSExtractPlaygroundCodeSnippetCommandTest.
	self assert: result first classes first isSelected.