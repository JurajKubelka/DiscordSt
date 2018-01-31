gt-extension
gtInspectorTreeIn: composite
	<gtInspectorPresentationOrder: -1>
	^ composite fastTree
			title: [ 'Tree' translated ];
			display: [ self children ];
			when: [ (self class >> #children) isSubclassResponsibility not and: [ self children isEmptyOrNil not ] ];
			children: [ :item | item children ];
			expandedUntil: 1;
			yourself