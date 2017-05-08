tests
testGeneral
	guild := self newUserGuild.
	guild id: self anyString.
	guild api: self.
	self assert: guild general notNil.