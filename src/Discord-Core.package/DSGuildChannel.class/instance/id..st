accessing
id: snowflake
	"Set the channels's id.
	It is equal to the guild id if it is the 'general' channel."
	^ self fieldsAt: 'id' put: snowflake