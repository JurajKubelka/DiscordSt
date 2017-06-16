I know how to send an object, including a user text message, and a screenshot.

I use (collaborate with) 
 - DSLoginCommand if user is not authenticated
 - DSMessageCommand to ask user for a message text (description)
 - DSObjectWrapper that holds the serialized object, user description, and the screenshot.

I am integrated with GT-Inspector using a GLMGeneralAction, see Object >> #gtInspectorActionSendObjectToDiscordChannel method.

Public API and Key Messages

- object: 		- set object that should be sent to Discord

{{{
DSSendObjectCommand new
	object: Object new;
	forkedExecution
}}}
 
Internal Representation and Key Implementation Points.

    Instance Variables
	object:				<Object>
	serializedObject:		<ByteArray>
