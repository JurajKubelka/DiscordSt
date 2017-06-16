private
createHumanReadableTextRepresentation
	"Set a human readable text version of the Stack."
	self textStack: (String streamContents: [ :s| 
		self interruptedContext shortDebugStackOn: s ])