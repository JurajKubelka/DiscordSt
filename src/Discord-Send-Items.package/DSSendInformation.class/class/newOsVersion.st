instance creation
newOsVersion
	"Return an object that represents the operating system version."
	^ self new 
		name: 'OS';
		value: (Smalltalk os name asString, ' - ', Smalltalk os version asString);
		yourself