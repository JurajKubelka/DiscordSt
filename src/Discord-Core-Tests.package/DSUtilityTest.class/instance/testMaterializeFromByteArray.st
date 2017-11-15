tests
testMaterializeFromByteArray
	| bytes result |
	bytes := DSUtility serializeToByteArray: self.
	result := DSUtility materializeFromByteArray: bytes.
	self assert: result notNil.
	self assert: result class equals: self class.