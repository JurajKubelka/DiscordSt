I am a command that search for  a channel in a channel hierarchy (channels in categories) that satisfy a condition.

Public API and Key Messages

- channels 			set searched channels
- satisfiedBy			set an one argument block that retuns a true or false
- execute			perform the search algorithm
- satisfyingChannel	get nil or a channel that satisfies the condition

Internal Representation and Key Implementation Points.

    Instance Variables
	channels:			<Array>
	satisfiedBy:			<BlockClosure>
	satisfyingChannel:	<DSChannel>
