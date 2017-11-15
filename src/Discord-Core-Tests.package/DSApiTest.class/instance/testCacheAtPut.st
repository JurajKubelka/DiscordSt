tests
testCacheAtPut
	api := self newApi.
	api cacheAt: 'key' put: self anyString.
	self assert: (api cacheAt: 'key') equals: self anyString.