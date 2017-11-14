defaults - url
userAvatarFormat: aDSUser 
	"Return avatar's format (GIF or Webp)"
	^ (aDSUser avatarHash beginsWith: 'a_')
			ifTrue: [ aDSUser avatarHash asString, '.gif' ]
			ifFalse: [ aDSUser avatarHash asString, '.webp' ]