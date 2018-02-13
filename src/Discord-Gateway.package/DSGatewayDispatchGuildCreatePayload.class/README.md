I represent Discord Gateway Dispatch Payload Message used for communication between a client and a server.
I represent GUILD_CREATE event.

See documentation at https://discordapp.com/developers/docs/topics/gateway#gateway-op-codespayloads
https://discordapp.com/developers/docs/topics/gateway#guild-create

This event can be sent in three different scenarios:
- When a user is initially connecting, to lazily load and backfill information for all unavailable guilds sent in the Ready event.
- When a Guild becomes available again to the client.
- When the current user joins a new Guild.

The inner payload is a guild object, with all the extra fields specified.
