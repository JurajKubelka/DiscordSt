initialization
initialize
	super initialize.
	items := DSSendItems new.
	self itemsChangedFrom: nil to: items.