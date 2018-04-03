accessing - computed
markdown
	"Return Markdown representation of a Playground code snippet"
	<return: #String>
	^ self hasSelection 
		ifTrue: [ DSUtility smalltalkMarkdownOf: self selectionText trimBoth ]
		ifFalse: [ DSUtility smalltalkMarkdownOf: self codeSnippet trimBoth ]