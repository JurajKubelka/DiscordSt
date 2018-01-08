public - user
me
	"Return User object that identyfies the logged user."
	<return: #DSUser>
	^ [ | user |
		user := self restApi me
			restApi: self;
			yourself.
		self announce: (DSUserAnnouncement new user: user; yourself).
		user ] 
		on: DSDiscordError 
		do: [ :exception | self handleError: exception ]