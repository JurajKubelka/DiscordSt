accessing
children
	^ self user
		ifNil: [ #() ] 
		ifNotNil: [ :aUser | Array with: aUser ]