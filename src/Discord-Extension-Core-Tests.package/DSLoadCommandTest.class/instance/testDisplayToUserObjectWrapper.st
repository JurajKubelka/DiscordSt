tests-private
testDisplayToUserObjectWrapper
	| object window wrapper |
	command := self newObject.
	object := Object new.
	wrapper := DSObjectWrapper new
		serializedData: (DSUtility serializeToByteArray: object);
		yourself.
	window := command displayToUser: wrapper.
	[ 
		self assert: window notNil.
		self assert: window isMorph.
		self assert: window isSystemWindow.
		self assert: (window model class = Object or: [ window model entity class = Object ]).
	] ensure: [ window delete ].