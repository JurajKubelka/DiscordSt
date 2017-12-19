accessing
announcer
	^ announcer ifNil: [ announcer := self newAnnouncer ]