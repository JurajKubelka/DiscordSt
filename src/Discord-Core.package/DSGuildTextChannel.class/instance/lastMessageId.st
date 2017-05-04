accessing
lastMessageId
	"Get the id of the last message sent in this channel.
	Present only for text type channels."
	^ self fieldsAt: 'last_message_id'