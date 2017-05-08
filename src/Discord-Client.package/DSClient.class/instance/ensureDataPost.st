private
ensureDataPost
	"Create a data post object if necessary and return it."
	self post 
		ifNil: [ self post: self newDataPost ]
		ifNotNil: [ self post: self post asDataPost ].
	^ self post