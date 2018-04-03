initialization
initialize
	super initialize.
	selectedChannels := Dictionary new.
	directChannelsItem := DSDirectMessageItem registry: self.