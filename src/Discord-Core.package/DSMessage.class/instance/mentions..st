accessing
mentions: collectionOfUsers
	"Set users specifically mentioned in the message."
	^ self fieldsAt: 'mentions' put: collectionOfUsers