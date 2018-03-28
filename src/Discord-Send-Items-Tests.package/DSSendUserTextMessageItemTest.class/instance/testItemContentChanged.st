tests
testItemContentChanged
	| result |
	item := self classToTest new.
	item onContentChangedDo: [ :ann | result := ann ].
	item text: 'message'.
	self assert: result notNil.
	self assert: result class equals: DSContentChangedAnnouncement.