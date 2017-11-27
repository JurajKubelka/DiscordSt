initialization
initialize
	super initialize.
	post := self newJSONPost.
	waitForResponse := false.
	ifFailBlock := [ :exception | exception pass ].