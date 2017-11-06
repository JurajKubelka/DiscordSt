enumerating
children
	"Return channels if authenticated.
	Useful for tree view representations."
	^ self isAuthenticated 
		ifTrue: [ self channels ] 
		ifFalse: [ self class defaultCollection new ]