as yet unclassified
resetDefault
	default 
		ifNil: [ ^ self ]
		ifNotNil: [ :aClient | 
			default := nil.
			aClient disconnect; logout ].