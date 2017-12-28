accessing - convenience
userTextMessageItem
	"Return an user text message item"
	<return: #DSSendUserTextMessageItem>
	^ self collection 
		detect: [ :eachItem | eachItem isUserTextMessageItem ]  
		ifFound: [ :anItem | anItem ] 
		ifNone: [ self collection add: DSSendUserTextMessageItem new ]