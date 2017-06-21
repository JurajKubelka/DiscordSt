printing
printHumanReadableBytes: aTotalNumber on: aStream 
	"Print in a readable form size, e.g., 1KB, 12MB, etc."
	aTotalNumber < 1024 ifTrue: [ 
		^ aStream << aTotalNumber << ' bytes' ].
	aTotalNumber < 1048576 ifTrue: [ 
		^ aStream << (aTotalNumber / 1024) rounded << ' KB' ].
	aTotalNumber <  1073741824 ifTrue: [ 
		^ aStream << (aTotalNumber / 1048576) rounded << ' MB' ].
	aTotalNumber < 1099511627776 ifTrue: [ 
		^ aStream << (aTotalNumber / 1073741824) rounded << ' GB' ].
	aStream << (aTotalNumber / 1099511627776) rounded << ' TB'