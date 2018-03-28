announcement registration
onEnabledChangedDo: oneArgBlock
	"Register for content changes. The block receives the announcement."
	^ self announcer 
		subscribe: DSSendAttachmentEnabledChangedAnnouncement
		do: oneArgBlock