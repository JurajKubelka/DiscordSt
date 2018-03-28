announcement registration
onSelectionChangedDo: oneArgBlock
	"Register for content changes. The block receives the announcement."
	^ self announcer 
		subscribe: DSSendAttachmentSelectionChangedAnnouncement
		do: oneArgBlock