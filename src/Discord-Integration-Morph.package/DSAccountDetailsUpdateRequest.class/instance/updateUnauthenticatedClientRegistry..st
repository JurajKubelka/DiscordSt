as yet unclassified
updateUnauthenticatedClientRegistry: aDSClientRegistry 
	"Display a server and channel list on an authenticated Discord client."
	| loginMorph |
	loginMorph := self morph ensureClientLoginMorph.
	loginMorph onLoginRequestDo: [ :email :password | aDSClientRegistry email: email; password: password; login ].