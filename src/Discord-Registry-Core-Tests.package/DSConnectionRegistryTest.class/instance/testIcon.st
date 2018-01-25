tests
testIcon
	| icon |
	icon := Smalltalk ui icons iconNamed: #class.
	registry := self classToTest new.
	registry icon: icon.
	self assert: registry icon equals: icon.