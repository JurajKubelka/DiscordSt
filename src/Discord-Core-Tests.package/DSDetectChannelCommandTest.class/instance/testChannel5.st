tests
testChannel5
	command := self classToTest new.
	command satisfiedBy: [ :aChannel | false ].
	command channels: DSCategoryChannel withTwoChannels.
	command execute.
	self assert: command satisfyingChannel isNil.	