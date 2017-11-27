accessing
embed
	"Create an embed object if necessary and return it."
	<return: #DSEmbed>
	^ self post embed
		ifNil: [ self post embed: self newEmbed; embed ]