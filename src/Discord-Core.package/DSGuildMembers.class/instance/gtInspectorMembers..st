gt-inspector-extension
gtInspectorMembers: composite
	<gtInspectorPresentationOrder: -1>
	^ composite fastTree
		title: [ 'Members' translated ];
		display: [ self ];
		when: [ self notEmpty ];
		children: [ :item | item children ];
		yourself