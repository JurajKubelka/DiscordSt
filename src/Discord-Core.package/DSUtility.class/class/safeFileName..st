fuel
safeFileName: anObject
	"Return a safe string representation that can be used as a basename for a filename.
	It returns a basename without an extension, e.g., .png."

	^ String
		streamContents: [ :aStream | 
			| previousCharacter aString |
			previousCharacter := nil.
			aString := anObject
				printStringLimitedTo: DSConstants maxFileNameLenght + 9 "take into the account ...etc... tail".
			aString := aString first: DSConstants maxFileNameLenght. "and remove the ...etc... tail"
			aString := aString trimBoth: [ :char | char isAlphaNumeric not ].
			aString
				do: [ :char | 
					| nextCharacter |
					nextCharacter := char isSafeForHTTP
						ifTrue: [ char ]
						ifFalse: [ $- ].
					nextCharacter = $.
						ifTrue: [ nextCharacter := $- ].
					previousCharacter = nextCharacter
						ifFalse: [ aStream nextPut: nextCharacter ]
						ifTrue: [ nextCharacter isAlphaNumeric
								ifTrue: [ aStream nextPut: nextCharacter ] ].
					previousCharacter := nextCharacter ] ]