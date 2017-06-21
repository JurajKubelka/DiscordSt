tests
testPrintHumanReadableBytes
	self assert: (DSUtility printHumanReadableBytes: 0) equals: '0 bytes'.
	self assert: (DSUtility printHumanReadableBytes: 1) equals: '1 bytes'.
	self assert: (DSUtility printHumanReadableBytes: 9) equals: '9 bytes'.
	self assert: (DSUtility printHumanReadableBytes: 10) equals: '10 bytes'.
	self assert: (DSUtility printHumanReadableBytes: 999) equals: '999 bytes'.
	self assert: (DSUtility printHumanReadableBytes: 1000) equals: '1000 bytes'.
	self assert: (DSUtility printHumanReadableBytes: 1023) equals: '1023 bytes'.
	self assert: (DSUtility printHumanReadableBytes: 1024) equals: '1 KB'.
	self assert: (DSUtility printHumanReadableBytes: 1024 * 1024 - 1) equals: '1024 KB'.
	self assert: (DSUtility printHumanReadableBytes: 1024 * 1024) equals: '1 MB'.
	self assert: (DSUtility printHumanReadableBytes: 1024 * 1024 * 1024 - 1) equals: '1024 MB'.
	self assert: (DSUtility printHumanReadableBytes: 1024 * 1024 * 1024) equals: '1 GB'.
	self assert: (DSUtility printHumanReadableBytes: 1024 * 1024 * 1024 * 1024 - 1) equals: '1024 GB'.
	self assert: (DSUtility printHumanReadableBytes: 1024 * 1024 * 1024 * 1024) equals: '1 TB'.
	self assert: (DSUtility printHumanReadableBytes: 1024 * 1024 * 1024 * 1024 * 1024 - 1) equals: '1024 TB'.
	self assert: (DSUtility printHumanReadableBytes: 1024 * 1024 * 1024 * 1024 * 1024) equals: '1024 TB'.
