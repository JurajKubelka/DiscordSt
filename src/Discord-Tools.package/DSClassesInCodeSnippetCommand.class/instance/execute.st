execute
execute
	| ast |
	ast := Smalltalk compiler 
    source: self codeSnippet;
    parseExpression.
	classes := Array streamContents: [ :aStream | 
		ast nodesDo: [ :eachNode | 
			eachNode isVariable and: [ 
				Smalltalk environment at: eachNode name ifPresent: [ :aClass | 
					aClass isClass ifTrue: [ aStream nextPut: aClass ] ] ] ] ].