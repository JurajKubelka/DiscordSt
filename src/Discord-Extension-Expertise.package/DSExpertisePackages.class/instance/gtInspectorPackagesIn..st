gt-inspector-extension
gtInspectorPackagesIn: composite
	<gtInspectorPresentationOrder: -1>
	^ composite fastTree
		title: [ 'Packages' translated ];
		when: [ self notEmpty ];
		children: [ :item | item children ];
		format: [ :item | item printString ];
		yourself