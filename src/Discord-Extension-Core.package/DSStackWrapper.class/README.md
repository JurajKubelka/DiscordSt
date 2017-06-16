I represent a serialized Stack trace. The stack trace should be serialized using FUEL.

I also keep a description, text form of the stack, and a debugger screenshot. I know how to materialize the stack and open it in a debugger.

DSSendStackCommand uses me in order to send a stack trace to Discord.

Public API and Key Messages

- serializedStack: - a stack serialized using FUEL   
- textStack: 		- textural representation of the stack
- description: 	- description that explains a problem
- screenshot:		- a debugger screenshot

{{{
DSStackWrapper new
	serializedStack: #[ 1 2 3 4 ];
	textStack: 'Object class(Behavior)>>new
UndefinedObject>>DoIt
...';
	description: 'I am an example of a stack trace. Do not materialize the stack, it is a fake example.';
	screenshot: World imageForm;
	yourself.
}}}

Internal Representation and Key Implementation Points.

    Instance Variables
	description:		<String>
	screenshot:		<Form>
	serializedStack:	<ByteArray>
	textStack:		<String>
