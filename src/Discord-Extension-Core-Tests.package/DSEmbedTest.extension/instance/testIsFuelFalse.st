*Discord-Extension-Core-Tests
testIsFuelFalse
	object := self newObject 
		fieldName: self anyString value: self anyStringTwo;
		yourself.
	self deny: object isFuel