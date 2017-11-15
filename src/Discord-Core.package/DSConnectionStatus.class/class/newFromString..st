instance creation
newFromString: aString
	^ (self allStatuses detect: [ :eachClass | eachClass statusString = aString ]) uniqueInstance