tests
testScriptLanguage
	| result |
	builder := self classToTest new.
	builder script: 'document open;' language: 'JavaScript'.
	result := builder build.
	self 
		assert: result 
		equals: (String cr join: #( '```JavaScript' 'document open;' '```' '')).