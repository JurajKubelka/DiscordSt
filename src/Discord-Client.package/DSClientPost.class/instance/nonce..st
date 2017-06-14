accessing
nonce: snowflake
	"Set the message nonce that can be used for optimistic message sending"
	^ self fieldsAt: 'nonce' put: snowflake