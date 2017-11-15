converting
asAuthor
	"Return a copy with a basic information, necessary to identify a message author."
	^ self class new
		id: self id;
		avatarHash: self avatarHash;
		discriminator: self discriminator;
		username: self username;
		yourself