tests
testAnnouncer
	item := self classToTest new.
	self assert: item announcer notNil.