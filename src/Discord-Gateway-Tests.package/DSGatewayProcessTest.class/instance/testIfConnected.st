tests
testIfConnected
	| value |
	process := self newGatewayProcess.
	value := nil.
	process ifConnected: [ :aSocket | value := 42 ].
	self assert: value isNil.
	