tests
testCacheAt
	api := self newRestApi.
	self assert: (api cacheAt: 'user') isNil