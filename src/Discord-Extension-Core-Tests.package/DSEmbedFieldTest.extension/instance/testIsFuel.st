*Discord-Extension-Core-Tests
testIsFuel
	object := self newObject name: DSSendCommand fuelFieldName; yourself.
	self assert: object isFuel