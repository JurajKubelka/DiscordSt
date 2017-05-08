accessing
pinned: boolean
	"Set whether this message is pinned."
	^ self fieldsAt: 'pinned' put: boolean