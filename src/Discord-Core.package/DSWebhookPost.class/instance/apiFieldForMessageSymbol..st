accessing
apiFieldForMessageSymbol: aString
	aString = 'avatarUrl' ifTrue: [ ^ 'avatar_url' ].
	^ super apiFieldForMessageSymbol: aString