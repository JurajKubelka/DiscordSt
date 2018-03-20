public - channel
messagesAfter: aDSMessage inChannel: aDSGuildTextChannel 
	<return: #DSMessages of: #DSMessage>
	| queryParams |
	queryParams := Dictionary new
		at: 'after' put: aDSMessage id; 
		yourself.
	^ self messagesForChannelId: aDSGuildTextChannel id queryParams: queryParams