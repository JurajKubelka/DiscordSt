accessing
onPasswordUpdateDo: aBlock
	^ passwordModel announcer 
		subscribe: RubTextUpdatedInModel 
		do: [ :ann | aBlock cull: passwordModel getString ]
