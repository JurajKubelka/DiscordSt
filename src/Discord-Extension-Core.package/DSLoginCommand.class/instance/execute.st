execute
execute
	"Ask user for credentials information and login if necessary."
	self client isAuthenticated 
		ifFalse: [ self askForCredentials ]
		ifTrue: [ self signalAnswer ]