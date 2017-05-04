accessing
guildId: snowflake
	"Set the id of the guild that this channel belongs to."
	^ self fieldsAt: 'guild_id' put: snowflake