fuel
safeFileName: anObject
	"Return a safe string representation that can be used as a basename for a filename.
	It returns a basename without an extension, e.g., .png."

	^ String
		streamContents: [ :aStream | 
			| previousCharacter aString |
			previousCharacter := nil.
			aString := anObject printStringLimitedTo: DSConstants maxFileNameLenght - 14.
			aString := aString trimBoth: [ :char | char isAlphaNumeric not ].
			aString
				do: [ :char | 
					| nextCharacter |
					char isSafeForHTTP
						ifTrue: [ nextCharacter := char ]
						ifFalse: [ nextCharacter := $- ].
					nextCharacter = $.
						ifTrue: [ nextCharacter := $- ].
					previousCharacter = nextCharacter
						ifFalse: [ aStream nextPut: nextCharacter ]
						ifTrue: [ nextCharacter isAlphaNumeric
								ifTrue: [ aStream nextPut: nextCharacter ] ].
					previousCharacter := nextCharacter ] ]