accessing
name
	^ self screenshot 
		ifNotNil: [ :aMorph | aMorph isSystemWindow 
			ifTrue: [ aMorph label ]  
			ifFalse: [ aMorph printString ] ]
		ifNil: 'without screenshot'