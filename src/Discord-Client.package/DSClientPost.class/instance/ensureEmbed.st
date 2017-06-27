private
ensureEmbed
	"Create an embed object if necessary and return it."
	self embed ifNil: [ self embed: self newEmbedObject ].
	^ self embed