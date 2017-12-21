announcement registration
onSelectionChangedDo: oneArgBlock
	"Register for selection changes.
	oneArgBlock receives the announcement object."
	^ self announcer
		subscribe: DSRegistrySelectionChangedAnnouncement 
		do: oneArgBlock