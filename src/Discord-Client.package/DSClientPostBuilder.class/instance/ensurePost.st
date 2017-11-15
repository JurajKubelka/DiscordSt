private
ensurePost
	"Create a post object if necessary and return it."
	post ifNil: [ post := self newJSONPost ].
	^ post