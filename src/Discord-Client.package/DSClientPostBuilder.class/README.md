I represent Discord message builder.
I know how to compose message, that can include
	- a simple text content
	- an embed object
	- and attachments
	
I can be used for composing one message at a time.
	
I collaborate with DSClientPost and its subclasses that know how to prepare an HTTP request (as a JSON payload string or as a byte arrray).

I am used by DSClient and I use the client to send a message.

Public API and Key Messages

- channel : 	- set the channel object where a particular message is going to be sent
- send, sendTo:, sendToServer:channel: - send a composed message to a specific channel
- for composing a message, check "protocol - *".
 
Internal Representation and Key Implementation Points.

    Instance Variables
	channel:		<DSGuildChannel>
	client:		<DSClient>
	post:		<DSClientPost>
