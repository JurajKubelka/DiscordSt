announcement registration
onContentChangedDo: oneArgBlock
	"Register for content changes. The block receives the announcement."

	^ self announcer when: DSContentChangedAnnouncement do: oneArgBlock