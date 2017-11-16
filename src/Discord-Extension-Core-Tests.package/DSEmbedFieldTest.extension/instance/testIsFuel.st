*Discord-Extension-Core-Tests
testIsFuel
	object := self newObjectToTest name: DSSendCommand fuelFieldName; yourself.
	self assert: object isFuel