printing
printHumanReadableBytes: aTotalNumber
	"Print in a readable form size, e.g., 1KB, 12MB, etc."
	^ String streamContents: [ :aStream |
		self printHumanReadableBytes: aTotalNumber on: aStream ]