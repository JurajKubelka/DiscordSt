enumerating
morphItems
	^ self registries 
		ifNil: [ #() ]
		ifNotNil: [ self registries morphItems ]