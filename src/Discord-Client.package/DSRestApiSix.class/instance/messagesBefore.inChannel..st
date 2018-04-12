public - channel
messagesBefore: aDSMessage inChannel: aDSGuildTextChannel 
	<return: #DSMessages of: #DSMessage>
	| queryParams |
	queryParams := Dictionary new
		at: 'before' put: aDSMessage id; 
		at: 'limit' put: '100';
		yourself.
	^ self messagesForChannelId: aDSGuildTextChannel id queryParams: queryParams