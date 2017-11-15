I represent Discord Gateway Invalid Session Payload Message used for communication between a client and a server.

I am received by a client when a session id is incorrect and thus it is not possible to receive all missing events since the last connection. The client thus has to connect using Identity (Identify) payload.

See documentation at https://discordapp.com/developers/docs/topics/gateway#gateway-op-codespayloads
