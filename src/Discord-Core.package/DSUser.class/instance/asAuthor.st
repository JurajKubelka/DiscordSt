converting
asAuthor
	"Return a copy with a basic information, necessary to identify a message author."
	^ self class new
		id: self id;
		avatar: self avatar;
		discriminator: self discriminator;
		username: self username;
		yourself