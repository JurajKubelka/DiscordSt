tests
testChannel2
	command := self classToTest new.
	command satisfiedBy: [ :aChannel | aChannel name = 'Test' ].
	command channels: DSCategoryChannel withTwoChannels.
	command execute.
	self assert: command satisfyingChannel notNil.
	self assert: command satisfyingChannel name equals: 'Test'.
	