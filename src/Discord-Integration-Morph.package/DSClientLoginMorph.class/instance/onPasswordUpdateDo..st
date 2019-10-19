accessing
onPasswordUpdateDo: aBlock
	^ passwordModel announcer
		when: RubTextUpdatedInModel
		do: [ :ann | aBlock cull: passwordModel getString ]