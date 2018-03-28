enumerating
onSelectionChangedDo: oneArgBlock
	"Register for isSelected changes. The block receives the announcement."
	^ self announcer 
		subscribe: DSSelectionChangedAnnouncement
		do: oneArgBlock