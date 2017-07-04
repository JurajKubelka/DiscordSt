tests
testWith
	| results returnValue |
	results := OrderedCollection new.
	client := self newClient.
	returnValue := client with: [ :aClient | results add: aClient. 42 ].
	self assert: results size equals: 1.
	self assert: results first == client.
	self assert: returnValue equals: 42.