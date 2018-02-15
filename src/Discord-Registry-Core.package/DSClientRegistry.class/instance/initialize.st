initialization
initialize
	super initialize.
	client := DSClient new.
	directChannelsItem := DSDirectMessageItem registry: self.