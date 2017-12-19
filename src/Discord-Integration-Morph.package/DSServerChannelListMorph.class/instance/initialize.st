initialization
initialize
	super initialize.
	registry := DSNoRegistry uniqueInstance.
	self addMorphBack: self newServerList.
	self addMorphBack: self newChannelList.