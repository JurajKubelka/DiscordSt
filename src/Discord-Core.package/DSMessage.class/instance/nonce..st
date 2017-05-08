accessing
nonce: snowflake
	"Set the message's nonce.
	It is used for validating a message was sent."
	^ self fieldsAt: 'nonce' put: snowflake