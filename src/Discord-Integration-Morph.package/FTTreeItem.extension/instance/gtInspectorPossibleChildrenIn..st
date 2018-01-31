*Discord-Integration-Morph
gtInspectorPossibleChildrenIn: composite
	<gtInspectorPresentationOrder: 2>
	^ composite fastTree
		title: [ 'Possible Tree' translated ];
		display: [ self possibleChildren ];
		when: [ (self class >> #children) isSubclassResponsibility not and: [ 
				[ self children notNil ] on: Error do: [ :exception | false ] ] ];
		children: [ :eachItem | eachItem possibleChildren ];
		format: [ :eachItem | 
			eachItem data asString,
			(self isExpanded 
				ifTrue: [ ' (expanded)' ] 
				ifFalse: [ ' (collapsed)' ] ) ];
		expandedUntil: 3;
		yourself.