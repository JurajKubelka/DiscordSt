private
updateUnauthenticatedClientRegistry: aDSClientRegistry 
	"Display a server and channel list on an authenticated Discord client."
	| loginMorph |
	loginMorph := self morph ensureClientLoginMorph.
	loginMorph onLoginRequestDo: [ :email :password | 
		self loginTo: aDSClientRegistry email: email password: password ].