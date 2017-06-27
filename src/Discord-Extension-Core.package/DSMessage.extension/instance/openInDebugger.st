*Discord-Extension-Core
openInDebugger
	"Open the serialized stack in a debugger."
	| stack |
	stack := (self attachments detect: #isFuel) materialize.
	[ stack class = DSStackWrapper ] assert.
	stack openInDebugger