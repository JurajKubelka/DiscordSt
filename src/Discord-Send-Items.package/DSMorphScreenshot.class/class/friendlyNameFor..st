as yet unclassified
friendlyNameFor: aMorph
	"Return a screenshot string representation, e.g., window name"
	<return: #String>
	^ aMorph
		ifNotNil: [ :theMorph | theMorph isSystemWindow 
			ifTrue: [ theMorph label ]  
			ifFalse: [ theMorph printString ] ]
		ifNil: 'without screenshot'