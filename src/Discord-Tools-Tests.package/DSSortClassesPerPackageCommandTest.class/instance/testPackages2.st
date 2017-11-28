tests
testPackages2
	| command result |
	command := self classToTest new.
	command classes: { self class. DSExtractPlaygroundCodeSnippetCommandTest }.
	result := command execute; packages.
	self assert: result notNil.
	self assert: result size equals: 1.
	self assert: result first item equals: DSExtractPlaygroundCodeSnippetCommandTest package.
	self assert: result first isSelected.
	self assert: result first classes size equals: 2.
	self assert: result first classes first item equals: DSExtractPlaygroundCodeSnippetCommandTest.
	self assert: result first classes first isSelected.
	self assert: result first classes second item equals: self class.
	self assert: result first classes second isSelected.