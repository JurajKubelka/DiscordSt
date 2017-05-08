accessing
mentionEveryone: boolean
	"Set whether this message mentions everyone."
	^ self fieldsAt: 'mention_everyone' put: boolean