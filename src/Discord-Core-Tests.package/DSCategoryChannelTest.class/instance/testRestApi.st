tests
testRestApi
	category := self classToTest new.
	category restApi: DSRestBasic new.
	category subordinateChannels: { DSGuildTextChannel new }.
	self assert: category subordinateChannels first restApi equals: category restApi.