initialization
tearDown
	client ifNotNil: [ :aClient | aClient isAuthenticated ifTrue: [ aClient logout ] ].
	super tearDown.
