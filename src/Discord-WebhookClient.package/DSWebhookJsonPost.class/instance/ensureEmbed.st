private
ensureEmbed
	"Create an embed object if necessary and return it."
	self embeds ifEmpty: [ self addEmbed: self newEmbedObject ].
	^ self embeds last