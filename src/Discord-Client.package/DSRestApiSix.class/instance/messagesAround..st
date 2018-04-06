public - channel
messagesAround: aDSMessage 
	<return: #DSMessages of: #DSMessage>
	| queryParams |
	queryParams := Dictionary new
		at: 'around' put: aDSMessage id;
		yourself.
	^ self messagesForChannelId: aDSMessage channelId queryParams: queryParams