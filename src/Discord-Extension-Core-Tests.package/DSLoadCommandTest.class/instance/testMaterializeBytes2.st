tests-private
testMaterializeBytes2
	| object result bytes |
	command := self newObjectToTest.
	object := Object new.
	bytes := DSUtility serializeToByteArray: object.
	result := command materializeBytes: bytes.
	self assert: result class equals: object class.