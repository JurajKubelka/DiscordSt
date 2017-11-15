I am an Gateway Identity event.
See https://discordapp.com/developers/docs/topics/gateway#gateway-identify

Field	Type	Description
token	string	authentication token
properties	object	connection properties
compress	bool	whether this connection supports compression of packets
large_threshold	integer	value between 50 and 250, total number of members where the gateway will stop sending offline members in the guild member list
shard	array of two integers (shard_id, num_shards)	used for Guild Sharding
presence	gateway status update object	presence structure for initial presence information
