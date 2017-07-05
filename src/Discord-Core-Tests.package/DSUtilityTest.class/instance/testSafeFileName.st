tests
testSafeFileName
	| safeString |
	safeString := DSUtility safeFileName: 'a .(DDDSClient): user.name.secondname@gggmaillll.com (detail) (more info) (and more info)'.
	self assert: safeString notNil.
	self assert: safeString equals: 'a-DDDSClient-us'.