execute
execute
	self flattenedChannels: (Array streamContents: [ :aStream |
		self channels do: [ :eachChannel | 
			aStream nextPut: eachChannel.
			eachChannel isCategory ifTrue: [ aStream nextPutAll: eachChannel subordinateChannels ] ] ]).