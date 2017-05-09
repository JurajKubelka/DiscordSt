tests
testCacheAtIfAbsentPut
	api := self newApi.
	api cacheAt: 'key' ifAbsentPut: [ self anyString ].
	api cacheAt: 'key' ifAbsentPut: [ self anyStringTwo ].
	self assert: (api cacheAt: 'key') equals: self anyString