private
ensureThumbnail
	"Create a thumbnail object if necessary and return it."
	self thumbnail ifNil: [ self thumbnail: self newEmbedThumbnail ].
	^ self thumbnail