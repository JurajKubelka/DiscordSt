gt-inspector-extension
gtInspectorDirectChannels: composite
	<gtInspectorPresentationOrder: 3>
	^ composite fastTree
		title: [ 'Direct Channels' translated ];
		display: [ self me directChannels ];
		when: [ self isAuthenticated ];
		children: [ :item | item children ];
		expandedUntil: 1;
		yourself