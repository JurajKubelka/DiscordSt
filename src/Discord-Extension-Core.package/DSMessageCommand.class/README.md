I can ask user for a message content and filename of an attached file. 

The other commands can call me in order to ensure that the client is logged. The other commands should call DSLoginCommand if the client is not authenticated. I skip the opperation in such case.

Public API and Key Messages

- client:  			- set a DSClient object
- text: 			- set predefined message text
- fileName		- set predefined filename
- onAccept		- set a block, that is called when user accepts the dialog
- execute 		- ask user for message text and filename and perform onAccept action if accepted

{{{
DSMessageCommand new
	client: DSClient default;
	text: 'user description of a problem';
	fileName: 'stack-trace-of-a-problem.fuel';
	onAccept: [ :command | | channel text fileName |
		"send the message"
		DSClient default
			message: command text;
			fileName: command fileName morph: World;
			sentTo: command channel.
		 ];
	execute
 }}}

Internal Representation and Key Implementation Points.

    Instance Variables
	channel:		<DSGuildTextChannel>
	fileName:	<String>
	onAccept:	<BlockClosure>
	text:		<String>
