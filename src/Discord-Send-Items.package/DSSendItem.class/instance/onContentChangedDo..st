announcement registration
onContentChangedDo: oneArgBlock
	"Register for content changes. The block receives the announcement."
	^ self announcer 
		subscribe: DSSendItemContentChangedAnnouncement
		do: oneArgBlock