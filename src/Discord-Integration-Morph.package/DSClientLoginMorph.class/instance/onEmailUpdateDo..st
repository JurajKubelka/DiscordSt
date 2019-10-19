accessing
onEmailUpdateDo: aBlock
	"One argument block receives updated email."

	^ emailModel announcer
		when: RubTextUpdatedInModel
		do: [ :ann | aBlock cull: emailModel getString ]