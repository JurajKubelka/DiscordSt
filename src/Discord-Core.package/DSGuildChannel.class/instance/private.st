accessing
private
	"Get true if the channel is private, false otherwise.
	It should always be false for guild channels."
	^ self fieldsAt: 'is_private'