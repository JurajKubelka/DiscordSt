private
messageReceived: message
	"Inform receiver about received message.
	The message is a raw message (string or bytes).
	Process UnhandledError and Halt exceptions in a separate process.
	That way we can still receive messages and keep the process active 
	even on a debugger window close." 
	self receiver ifNotNil: [ :oneArgBlock | 
		[ oneArgBlock value: message ]
			on: UnhandledError, Halt fork: [ :ex | ex pass ] ]