accessing
embed
	"Create an embed object if necessary and return it."
	<return: #DSEmbed>
	^ self embed 
		ifNil: [ self post embed: self newEmbed ]
		ifNotNil: [ self post embed ]