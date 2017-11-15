accessing - convenience
avatarUrl
	"Return a user's avatar URL. 
	Return nil if the user has no avatar."
	^ self restApi userAvatarUrl: self