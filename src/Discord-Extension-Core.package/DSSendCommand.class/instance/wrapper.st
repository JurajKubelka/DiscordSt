accessing
wrapper
	"Get an object that wraps the serialized object (data)."
	^ wrapper ifNil: [ wrapper := self wrapperClass new ]