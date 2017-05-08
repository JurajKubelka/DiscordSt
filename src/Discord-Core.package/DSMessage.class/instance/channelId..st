accessing
channelId: snowflake
	"Set the id of the channel the message was sent in."
	^ self fieldsAt: 'channel_id' put: snowflake