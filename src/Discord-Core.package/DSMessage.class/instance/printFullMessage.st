as yet unclassified
printFullMessage
	^ Text streamContents: [ :aStream | 
		self printFullMessageOn: aStream ]