tests-private
testDisplayToUserObjectWrapper
	| object window wrapper |
	command := self newCommand.
	object := Object new.
	wrapper := DSObjectWrapper new
		serializedData: (FLSerializer serializeToByteArray: object);
		yourself.
	window := command displayToUser: wrapper.
	[ 
		self assert: window notNil.
		self assert: window isMorph.
		self assert: window isSystemWindow.
		self assert: (window model class = Object or: [ window model entity class = Object ]).
	] ensure: [ window delete ].