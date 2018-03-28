announcement registration
onEnabledChangedDo: oneArgBlock
	"Register for isEnabled changes. The block receives the announcement."
	^ self announcer
		subscribe: DSEnabledChangedAnnouncement
		do: oneArgBlock