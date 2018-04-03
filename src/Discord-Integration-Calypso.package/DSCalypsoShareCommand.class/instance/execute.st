execution
execute
	selectedText ifEmpty: [ ^ self shareWholeMethod ].
	selectedText lineCount > 1 
		ifTrue: [ self shareMultiLineText ]
		ifFalse: [ self shareInlinedText ]