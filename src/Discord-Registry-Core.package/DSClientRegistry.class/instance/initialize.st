initialization
initialize
	super initialize.
	client := DSClient new.
	selectedChannels := Dictionary new.
	directChannelsItem := DSDirectMessageItem registry: self.