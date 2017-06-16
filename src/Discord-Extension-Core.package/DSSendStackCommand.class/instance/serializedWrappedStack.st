accessing
serializedWrappedStack
	"Return serialized Stack trace wrapped in DSStackWrapper."
	| wrapper |
	wrapper := DSStackWrapper new
		serializedStack: self serializedStack;
		textStack: self textStack;
		description: self text;
		screenshot: self imageForm;
		yourself.
	^ self serializeObject: wrapper.