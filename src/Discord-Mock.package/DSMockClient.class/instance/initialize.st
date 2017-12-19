initialization
initialize
	super initialize.
	announcer := self newAnnouncer.
	isAuthenticated := false.
	loginAction := [ :client | self isAuthenticated: true ].
	servers := DSGuilds new.