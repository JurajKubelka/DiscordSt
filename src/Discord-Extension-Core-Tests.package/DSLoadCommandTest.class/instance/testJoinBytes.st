tests-private
testJoinBytes
	| result |
	command := self newObject.
	result := command joinBytes: { self bytes. self bytesTwo }.
	self assert: result equals: #[ 1 2 3 4 9 8 7 6 5 ]