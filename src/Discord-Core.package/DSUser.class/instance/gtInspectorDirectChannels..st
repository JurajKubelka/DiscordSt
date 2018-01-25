gt-inspector-extension
gtInspectorDirectChannels: composite
	<gtInspectorPresentationOrder: -1>
	^ composite fastTree
		title: [ 'Direct Channels' translated ];
		display: [ self directChannels ];
		when: [ self directChannels notEmpty ];
		children: [ :item | item children ];
		expandedUntil: 1;
		yourself