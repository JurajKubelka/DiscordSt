I know how to send a message with serialized object to a Discord channel. 

I  ask for a message text, attachment name (serialized object filename), and channel (by using askForMessage method). 

I am used for Tool extensions. I am espetially useful if you want to have a button in an GT-Inspector to send an object.

Public API and Key Messages

- client - set a client used for the Discord communication
- channel - set a channel to which a message should be sent
- fileName - set a name of the attachement (serialized object)
- object - set the object that you want to send to the Discord channel
- send - send message command
- askForMessage - ask for server, channel, and message information usig a dialog UI

{{{
"Send the object to a Discord channel."
DSSendCommand object: Object new.
}}}

Internal Representation and Key Implementation Points.

    Instance Variables
	channel:		<DSGuildTextChannel>
	client:		<DSClient>
	fileName:	<String>
	message:	<String>
	object:		<Object>
