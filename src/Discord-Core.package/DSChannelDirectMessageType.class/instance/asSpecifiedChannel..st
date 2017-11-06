converting
asSpecifiedChannel: aDSUnspecifiedChannel 
	^ DSDirectMessageChannel new
		id: aDSUnspecifiedChannel id;
		lastMessageId: aDSUnspecifiedChannel lastMessageId;
		recipients: aDSUnspecifiedChannel recipients;
		yourself