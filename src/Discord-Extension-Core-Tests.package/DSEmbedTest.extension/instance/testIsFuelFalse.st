*Discord-Extension-Core-Tests
testIsFuelFalse
	object := self newObjectToTest 
		fieldName: self anyString value: self anyStringTwo;
		yourself.
	self deny: object isFuel