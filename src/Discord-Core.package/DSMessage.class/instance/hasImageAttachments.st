testing
hasImageAttachments
	"Return true if any attachment is an image."
	^ self attachments anySatisfy: #isImage