I represent a connected Gateway state.
A client is successfully connected to a Gateway and sent OP 2 Identify code.
I wait for OP 2 Identify response that could be:
	- a confirmation by receiving Ready Event, or
	- rejection by receiving OP 9 Invalid Session code.

If I receive Ready Event, I store session id.

I am used by DSGatewayApi.