tests-private
testDisplayToUser
	| object window |
	command := self newObject.
	object := Object new.
	window := command displayToUser: object.
	[ 
		self assert: window notNil.
		self assert: window isMorph.
		self assert: window isSystemWindow.
		self assert: (window model == object or: [ window model entity == object ]).
	] ensure: [ window delete ].