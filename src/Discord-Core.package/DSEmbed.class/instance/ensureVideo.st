private
ensureVideo
	"Create a video object if necessary and return it."
	self video ifNil: [ self video: self newEmbedVideo ].
	^ self video