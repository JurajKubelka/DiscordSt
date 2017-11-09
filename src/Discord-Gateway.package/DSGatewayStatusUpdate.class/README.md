I represt a user status.
I am sent by the client to indicate a presence or status update.

See https://discordapp.com/developers/docs/topics/gateway#gateway-status-update

Field	Type	Description
since	?integer	unix time (in milliseconds) of when the client went idle, or null if the client is not idle
game	?game object	null, or the user's new activity
status	string	the user's new status
afk	bool	whether or not the client is afk (away from keyboad)
