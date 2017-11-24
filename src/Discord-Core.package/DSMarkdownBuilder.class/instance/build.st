building
build
	"Close the stream and return contents"
	<return: #String>
	| contents |
	contents := stream close; contents.
	self initializeStream.
	^ contents