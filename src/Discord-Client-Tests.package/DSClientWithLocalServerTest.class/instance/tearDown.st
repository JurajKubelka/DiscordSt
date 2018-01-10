running
tearDown
	client ifNotNil: #disconnect.
	super tearDown.