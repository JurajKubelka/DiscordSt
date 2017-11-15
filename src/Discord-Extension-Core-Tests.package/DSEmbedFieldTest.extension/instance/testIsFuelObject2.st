*Discord-Extension-Core-Tests
testIsFuelObject2
	"Ensure that value with a link is detected properly as serialized object."
	object := self newObject 
		name: DSSendCommand fuelFieldName; 
		value: '[Download to Pharo](https://pharo-link.herokuapp.com/?fuel=Object&id=H0E43AERY7FA-OS5MJH)';
		yourself.
	self assert: object isFuelObject