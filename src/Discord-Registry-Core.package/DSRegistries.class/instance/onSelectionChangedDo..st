announcement registration
onSelectionChangedDo: oneArgBlock
	"Register for selection changes.
	oneArgBlock receives the announcement object."

	^ self announcer
		when: DSRegistrySelectionChangedAnnouncement
		do: oneArgBlock