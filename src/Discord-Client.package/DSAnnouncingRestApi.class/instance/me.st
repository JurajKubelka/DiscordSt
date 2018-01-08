public - user
me
	"Return User object that identyfies the logged user."
	<return: #DSUser>
	^ self catchDiscordErrorDuring: [ | user |
		user := self restApi me
			restApi: self;
			yourself.
		self announce: (DSUserAnnouncement new user: user; yourself).
		user ]