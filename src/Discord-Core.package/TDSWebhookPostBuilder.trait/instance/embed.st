accessing
embed
	"Return an embed object. Create one if necessary."
	<return: #DSEmbed>
	^ self post embeds 
		ifEmpty: [ self addNewEmbed ]
		ifNotEmpty: [ self post embeds last ]