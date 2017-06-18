accessing
serializedWrappedObject
	"Return serialized object wrapped in DSObjectWrapper."
	| wrapper |
	wrapper := DSObjectWrapper new
		serializedObject: self serializedObject;
		description: self text;
		screenshot: self imageForm;
		addAllInfo: self info;
		yourself.
	^ self serializeObject: wrapper.