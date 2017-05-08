running
tearDown
	server ifNotNil: [ :aServer | aServer stop ].
	super tearDown.