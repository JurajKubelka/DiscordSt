tests
testHasContent
	"Default object does not have a content"
	message := self newMessage.
	self deny: message hasContent.