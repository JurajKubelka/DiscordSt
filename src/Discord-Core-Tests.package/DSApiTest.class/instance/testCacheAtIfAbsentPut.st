tests
testCacheAtIfAbsentPut
	api := self newRestApi.
	api cacheAt: 'key' ifAbsentPut: [ self anyString ].
	api cacheAt: 'key' ifAbsentPut: [ self anyStringTwo ].
	self assert: (api cacheAt: 'key') equals: self anyString.