protocol - embed
embeds
	"Return a collection of embed objects"
	<return: #Array of: #DSEmbed>
	^ self post embed ifNil: [ #() ] ifNotNil: [ :anEmbed | Array with: anEmbed ]