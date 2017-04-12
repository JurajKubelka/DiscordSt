accessing
includeInstanceVariables
	^ Array streamContents: [ :stream |
		content ifNotNil: [ stream nextPut: #content ].
		username ifNotNil: [ stream nextPut: #username ].
		avatarUrl ifNotNil: [ stream nextPut: #avatarUrl ].
		textToSpeech ifNotNil: [ stream nextPut: #textToSpeech ].
		embeds ifNotNil: [ stream nextPut: #embeds ].
	]