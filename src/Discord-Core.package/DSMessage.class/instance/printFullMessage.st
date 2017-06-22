printing
printFullMessage
	^ Text streamContents: [ :aStream | 
		self printFullMessageOn: aStream ]