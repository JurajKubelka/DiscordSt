tests
testInfos
	item := self classToTest new.
	self assert: item infos notNil.
	self assert: item infos isEmpty.
	