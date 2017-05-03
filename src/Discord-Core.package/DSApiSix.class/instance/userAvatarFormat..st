defaults - api
userAvatarFormat: aDSUser 
	"Return avatar's format (GIF or Webp)"
	^ (aDSUser avatar beginsWith: 'a_')
			ifTrue: [ aDSUser avatar asString, '.gif' ]
			ifFalse: [ aDSUser avatar asString, '.webp' ]