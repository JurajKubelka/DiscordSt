I know how to send a stack trace, including a user text message, textural representation of the stack trace, and the debuger screenshot.

I use (collaborate with) 
 - DSLoginCommand if user is not authenticated
 - DSMessageCommand to ask user for a message text (description)
 - DSStackWrapper that holds the serialized stack trace, user description, textural representation of the stack trace, and the screenshot.

I am integrated with GT-Debugger by DSFuelOutStackDebugAction.

Public API and Key Messages

- debugger: - set debugger object that holds the stack (context)  

Inside of a DebugAction object, I can be used as:

{{{
DSSendStackCommand new 
		debugger: self debugger;
		forkedExecution
}}}

Internal Representation and Key Implementation Points.

    Instance Variables
	channel:			<DSGuildTextChannel>
	debugger:		<GTGenericStackDebugger>
	fileName:		<String>
	imageForm:		<Form>
	morph:			<Morph>
	serializedStack:	<ByteArray>
	text:			<String>
	textStack:		<String>
