tests
testRestApi2
	category := self classToTest new.
	category subordinateChannels: { DSGuildTextChannel new }.
	category restApi: DSRestBasic new.
	self assert: category subordinateChannels first restApi equals: category restApi.