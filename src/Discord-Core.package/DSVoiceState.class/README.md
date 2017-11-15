I represent a user's voice connection status.

See https://discordapp.com/developers/docs/resources/voice#voice-state-object

Field	Type	Description
guild_id?	snowflake	the guild id this voice state is for
channel_id	snowflake	the channel id this user is connected to
user_id	snowflake	the user id this voice state is for
session_id	string	the session id for this voice state
deaf	bool	whether this user is deafened by the server
mute	bool	whether this user is muted by the server
self_deaf	bool	whether this user is locally deafened
self_mute	bool	whether this user is locally muted
suppress	bool	whether this user is muted by the current user