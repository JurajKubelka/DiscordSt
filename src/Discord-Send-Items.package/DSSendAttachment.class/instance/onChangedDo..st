enumerating
onChangedDo: oneArgBlock
	"Register for content changes. The block receives the announcement."
	^ self announcer 
		subscribe: DSSendAttachmentChangedAnnouncement
		do: oneArgBlock