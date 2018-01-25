accessing - convenience
ensureItem: messageSymbol ofClass: aClass
	<return: #DSSendItem>
	^ self collection 
		detect: [ :eachItem | eachItem perform: messageSymbol ]  
		ifFound: [ :anItem | anItem ] 
		ifNone: [ self collection add: aClass new ]