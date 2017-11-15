*Discord-Extension-Core-Tests
testIsFuelStack2
	"Ensure that value with a link is detected properly as serialized stack."
	object := self newObject 
		name: DSSendCommand fuelFieldName; 
		value: '[Download to Pharo](https://pharo-link.herokuapp.com/?fuel=Stack&id=H0E43AERY7FA-OS5MJH)';
		yourself.
	self assert: object isFuelStack