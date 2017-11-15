tests
testCacheAt
	api := self newApi.
	self assert: (api cacheAt: 'user') isNil