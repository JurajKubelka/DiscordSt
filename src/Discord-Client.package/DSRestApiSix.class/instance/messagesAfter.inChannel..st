public - channel
messagesAfter: aDSMessage inChannel: aDSGuildTextChannel 
	<return: #DSMessages of: #DSMessage>
	| queryParams |
	queryParams := Dictionary new
		at: 'after' put: aDSMessage id; 
		at: 'limit' put: '100';
		yourself.
	^ self messagesForChannelId: aDSMessage channelId queryParams: queryParams