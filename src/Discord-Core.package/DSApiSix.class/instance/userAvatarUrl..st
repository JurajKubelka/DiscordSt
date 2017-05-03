public
userAvatarUrl: aDSUser 
	"Return a user's avatar URL. 
	Return nil if the user has no avatar."
	aDSUser hasAvatar ifFalse: [ ^ nil ].
	^ self avatarsUrl / aDSUser id asString / (self userAvatarFormat: aDSUser) ? ('size' -> 1024)
