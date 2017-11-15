enumerating
selectChildren: idChannelString 
	^ (self channels 
		select: [ :eachChannel | eachChannel parentId = idChannelString ])
			sort: [ :a :b | a position < b position ];
			yourself