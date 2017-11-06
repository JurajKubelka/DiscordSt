instance creation
onBindHolder: anElementHolder at: aPosition
	"Update holder's model"
	anElementHolder message: (messages at: aPosition)