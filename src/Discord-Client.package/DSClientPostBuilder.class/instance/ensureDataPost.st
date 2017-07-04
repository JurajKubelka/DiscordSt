private
ensureDataPost
	"Create a data post object if necessary and return it."
	post 
		ifNil: [ post := self newDataPost ]
		ifNotNil: [ post := post asDataPost ].
	^ post