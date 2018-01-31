*Discord-Integration-Morph
gtInspectorActualChildrenIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTree
		title: [ 'Actual Tree' translated ];
		display: [ self actualChildren ];
		when: [ self actualChildren notNil ];
		children: [ :eachItem | eachItem children ];
		format: [ :eachItem | 
			eachItem data asString,
			(self isExpanded 
				ifTrue: [ ' (expanded)' ] 
				ifFalse: [ ' (collapsed)' ] ) ];
		expandedUntil: 3;
		yourself.