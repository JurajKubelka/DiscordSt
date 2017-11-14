converting
asDataPost
	"Convert a post into DSClientDataPost"
	| data |
	data := DSClientDataPost new.
	data
		content: self content;
		nonce: self nonce;
		isTextToSpeech: self isTextToSpeech;
		embed: self embed.
	^ data