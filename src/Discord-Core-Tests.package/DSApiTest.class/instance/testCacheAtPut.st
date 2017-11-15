tests
testCacheAtPut
	api := self newRestApi.
	api cacheAt: 'key' put: self anyString.
	self assert: (api cacheAt: 'key') equals: self anyString.