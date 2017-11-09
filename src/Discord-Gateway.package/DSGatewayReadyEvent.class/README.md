I am an Gateway Ready event.

The ready event is dispatched when a client has completed the initial handshake with the gateway (for new sessions). The ready event can be the largest and most complex event the gateway will send, as it contains all the state required for a client to begin interacting with the rest of the platform.

See https://discordapp.com/developers/docs/topics/gateway#ready

Field	Type	Description
v	integer	gateway protocol version
user	user object	information about the user including email
private_channels	array of DM channel objects	the direct messages the user is in
guilds	array of Unavailable Guild objects	the guilds the user is in
session_id	string	used for resuming connections
_trace	array of strings	used for debugging - the guilds the user is in