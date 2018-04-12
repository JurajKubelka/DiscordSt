public - channel
messagesAround: aDSMessage 
	<return: #DSMessages of: #DSMessage>
	| queryParams |
	queryParams := Dictionary new
		at: 'around' put: aDSMessage id;
		at: 'limit' put: '100';
		yourself.
	^ self messagesForChannelId: aDSMessage channelId queryParams: queryParams