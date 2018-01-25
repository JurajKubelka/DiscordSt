accessing
name
	"Return a screenshot string representation, e.g., window name"
	<return: #String>
	^ self morph 
		ifNotNil: [ :aMorph | aMorph isSystemWindow 
			ifTrue: [ aMorph label ]  
			ifFalse: [ aMorph printString ] ]
		ifNil: 'without screenshot'