accessing
userMessage
	<return: #String>
	^ String streamContents: [ :aStream | 
		aStream
			cr; 
			nextPutAll: (DSUtility smalltalkMarkdownOf: selectedText);
			cr;
			nextPutAll: 'Extracted from ';
			nextPutAll: (DSUtility smalltalkInlinedMarkdownOf: self method printString) ]