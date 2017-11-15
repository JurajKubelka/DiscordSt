tests-private
testMaterializeBytes
	| object result bytes |
	command := self newObject.
	object := Object new.
	bytes := DSUtility serializeToByteArray: object.
	result := command materializeBytes: bytes.
	self assert: result class equals: object class.