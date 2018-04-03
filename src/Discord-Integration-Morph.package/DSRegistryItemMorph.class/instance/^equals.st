comparing
= anObject
	^ self class = anObject class and: [ 
		self registry = anObject registry ]