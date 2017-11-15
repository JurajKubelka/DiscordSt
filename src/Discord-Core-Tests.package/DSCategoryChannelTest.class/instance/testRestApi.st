tests
testRestApi
	category := self classToTest new.
	category restApi: DSRestApiSix new.
	category subordinateChannels: { DSGuildTextChannel new }.
	self assert: category subordinateChannels first restApi equals: category restApi.