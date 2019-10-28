announcement registration
onSelectionChangedDo: oneArgBlock
	"Register for isSelected changes. The block receives the announcement."

	^ self announcer when: DSSelectionChangedAnnouncement do: oneArgBlock