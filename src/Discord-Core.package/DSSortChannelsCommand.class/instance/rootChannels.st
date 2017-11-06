enumerating
rootChannels
	^ (self channels 
		select: [ :eachChannel | eachChannel parentId isNil ])
			 sort: [ :a :b | a position < b position ]