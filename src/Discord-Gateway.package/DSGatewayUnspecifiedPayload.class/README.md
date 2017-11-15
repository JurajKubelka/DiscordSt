I represent a partial Discord Gateway Payload Message used for communication between a client and a server.

I am used for initial parsing in order to know what payload is received and parce the whole payload as a correct payload object.

See DSGatewayPayload and its corresponding subclasses.

Field	Type	Description	Present
op	integer	opcode for the payload	Always
t	string	the event name for this payload	Only for Opcode 0
