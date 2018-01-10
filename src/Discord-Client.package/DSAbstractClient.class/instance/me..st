accessing
me: aDSUser
	"Return User object that identyfies the logged user.
	See https://discordapp.com/developers/docs/resources/user#user-object"
	<return: #DSUser>
	me = aDSUser ifTrue: [ ^ self ].
	me := aDSUser.
	aDSUser restApi: self restApi.
	self announce: (DSClientUserChangedAnnouncement new
		client: self;
		user: aDSUser;
		yourself)