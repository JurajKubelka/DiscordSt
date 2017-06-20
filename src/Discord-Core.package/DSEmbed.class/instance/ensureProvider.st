private
ensureProvider
	"Create an provider object if necessary and return it."
	self provider ifNil: [ self provider: self newEmbedProvider ].
	^ self provider