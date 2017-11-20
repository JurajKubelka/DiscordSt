I represent a serialized Playground code snippet.

I also keep a description and playground screenshot. I know how to materialize and open the code snippet in a Playground.

DSSendPlaygroundCommand uses me in order to send a code snippet to Discord.

Public API and Key Messages

- codeSnippeet: 		- Playground code snippet
- description: 		- description that explains a problem
- screenshot:			- a Playground screenshot

{{{
DSPlaygroundWrapper new
	codeSnippet: 'World submorphs';
	description: 'How can I find my window?';
	screenshot: World imageForm;
	yourself.
}}}

Internal Representation and Key Implementation Points.

    Instance Variables
	description:		<String>
	screenshot:		<Form>
	codeSnippet:	<String>
