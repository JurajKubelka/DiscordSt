gt-inspector-extension
gtInspectorChannels: composite
	<gtInspectorPresentationOrder: -1>
	^ composite fastTree
		title: [ 'Channels' translated ];
		display: [ self ];
		when: [ self notEmpty ];
		children: [ :item | item children ];
		expandedUntil: 1;
		yourself