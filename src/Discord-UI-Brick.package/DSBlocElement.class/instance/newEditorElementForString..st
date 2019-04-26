instance creation
newEditorElementForString: aString
	| text |
	text := aString asRopedText.
	^ BrEditor new
		look: BrGlamorousRegularEditorLook new;
		text: text;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent ];
		background: Color white;
		margin: (BlInsets all: 5);
		border: (BlBorder paint: Color veryLightGray lighter width: 1)