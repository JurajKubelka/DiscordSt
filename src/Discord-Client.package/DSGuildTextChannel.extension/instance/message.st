*Discord-Client
message
	^ self restApi messageBuilder
		channel: self;
		yourself