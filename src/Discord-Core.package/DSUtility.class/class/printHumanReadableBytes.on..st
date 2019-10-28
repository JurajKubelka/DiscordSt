printing
printHumanReadableBytes: aTotalNumber on: aStream 
	"Print in a readable form size, e.g., 1KB, 12MB, etc."
	aTotalNumber < 1024 ifTrue: [ 
		aTotalNumber printOn: aStream.
		^ aStream << ' bytes' ].
	aTotalNumber < 1048576 ifTrue: [ 
		(aTotalNumber / 1024) rounded printOn: aStream.
		^ aStream << ' KB' ].
	aTotalNumber <  1073741824 ifTrue: [ 
		(aTotalNumber / 1048576) rounded printOn:aStream.
		^ aStream << ' MB' ].
	aTotalNumber < 1099511627776 ifTrue: [
		(aTotalNumber / 1073741824) rounded printOn: aStream.
		^ aStream << ' GB' ].
	(aTotalNumber / 1099511627776) rounded printOn: aStream.
	aStream << ' TB'