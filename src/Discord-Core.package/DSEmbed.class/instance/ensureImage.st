private
ensureImage
	"Create an image object if necessary and return it."
	self image ifNil: [ self image: self newEmbedImage ].
	^ self image