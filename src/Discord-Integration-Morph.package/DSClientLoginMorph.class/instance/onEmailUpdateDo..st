accessing
onEmailUpdateDo: aBlock
	"One argument block receives updated email."
	^ emailModel announcer 
		subscribe: RubTextUpdatedInModel 
		do: [ :ann | aBlock cull: emailModel getString ]
