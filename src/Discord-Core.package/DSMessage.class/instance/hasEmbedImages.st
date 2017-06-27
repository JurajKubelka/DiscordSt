testing
hasEmbedImages
	"Return true if any embed object has an image."
	^ self embeds anySatisfy: #hasImage