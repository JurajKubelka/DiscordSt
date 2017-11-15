tests
testSerializeToByteArray
	| bytes |
	bytes := DSUtility serializeToByteArray: self.
	self assert: bytes notNil.
	self assert: bytes class equals: ByteArray.