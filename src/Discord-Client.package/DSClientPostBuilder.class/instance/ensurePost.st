private
ensurePost
	"Create a post object if necessary and return it."
	self post ifNil: [ self post: self newJSONPost ].
	^ self post