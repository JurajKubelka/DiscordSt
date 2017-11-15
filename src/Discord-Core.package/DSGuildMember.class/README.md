I represent a Discord Guild Member object.

See https://discordapp.com/developers/docs/resources/guild#guild-member-object

Field	Type	Description
user	object	user object
nick?	string	this users guild nickname (if one is set)
roles	array of snowflakes	array of role object ids
joined_at	ISO8601 timestamp	when the user joined the guild
deaf	bool	if the user is deafened
mute	bool	if the user is muted
