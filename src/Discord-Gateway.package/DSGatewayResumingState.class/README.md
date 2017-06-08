I represent a connected Gateway state.
A client is successfully connected to a Gateway and sent OP 6 Resume code.
I wait for OP 6 Resume response that could be:
	- a confirmation by receiving Ready Event, or
	- rejection by receiving OP 9 Invalid Session code.

If I receive Ready Event.

I am used by DSGatewayApi.