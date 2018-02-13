tests
testAnnouncer
	attachment := self classToTest new.
	self assert: attachment announcer notNil.