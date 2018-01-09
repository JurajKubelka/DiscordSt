public - channel
olderMessagesForChannel: aChannel
	"Return a collection of messages for a given channel 
	that are older then the oldest message the channel holds.
	If there are no current messages, it returns the recent messages."
	<return: #DSMessages of: #DSMessage>
	| queryParams |
	queryParams := aChannel oldestMessage 
		ifNotNil: [ :aMessage | Array with: 'before' -> aMessage id ]
		ifNil: [ #() ].
	^ self messagesForChannelId: aChannel id queryParams: queryParams