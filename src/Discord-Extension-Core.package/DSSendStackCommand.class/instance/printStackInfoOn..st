printing
printStackInfoOn: aStream 
	self textStack ifNotNil: [ :string | aStream << string ].
