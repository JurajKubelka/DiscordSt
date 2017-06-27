private
serializeStack
	"Serialize the stack into a byte array using FUEL."
	| contextCopy |
	contextCopy := self interruptedContext copyStack.
	self serializedData: (self serializeObject: contextCopy).