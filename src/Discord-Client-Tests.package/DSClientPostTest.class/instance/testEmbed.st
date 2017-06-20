tests
testEmbed
	post := self newPost embed: self contentString; yourself.
	self assert: post embed equals: self contentString.