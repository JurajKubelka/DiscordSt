I represent decoded URL link information.
I am a holder of the decoded information.

I collaborate with DSPharoLinkGenerator object that knows how to generate my values. DSLoadCommand object then uses me in order to easily access my values.

Public API and Key Messages

- guildId:				- guild id where a user message was sent
- channelId:			- channel id where a user message was sent
- messageId:			- message id, a random number that identifies a message in a FUEL field
- dateAndTime:		- DateAndTime object
- messageChannelId:	- channel id where messages with serialized data where sent (it may be the same as channel id)
- messageIds:		- message ids that includes the serialized data as attachments

Internal Representation and Key Implementation Points.

    Instance Variables
	guildId:				<String>
	channelId:			<String> 
	messageId:			<String>
	dateAndTime:		<DateAndTime>
	messageChannelId:	<String>
	messageIds:			<Array>
