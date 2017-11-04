I represent a guild or DM channel within Discord.

See: https://discordapp.com/developers/docs/resources/channel#channel-object

Field	Type	Description
id	snowflake	the id of this channel
type	integer	the type of channel
guild_id?	snowflake	the id of the guild
position?	integer	sorting position of the channel
permission_overwrites?	array of overwrite objects	explicit permission overwrites for members and roles
name?	string	the name of the channel (2-100 characters)
topic?	string	the channel topic (0-1024 characters)
nsfw?	bool	if the channel is nsfw
last_message_id?	?snowflake	the id of the last message sent in this channel (may not point to an existing or valid message)
bitrate?	integer	the bitrate (in bits) of the voice channel
user_limit?	integer	the user limit of the voice channel
recipients?	array of user objects	the recipients of the DM
icon?	?string	icon hash
owner_id?	snowflake	id of the DM creator
application_id?	snowflake	application id of the group DM creator if it is bot-created
parent_id?	?snowflake	id of the parent category for a channel
