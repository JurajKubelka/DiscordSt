private
messageReceived: message
	"Inform receiver about received message.
	The message is a raw message (string or bytes)." 
	self receiver ifNotNil: [ :oneArgBlock | oneArgBlock value: message ]