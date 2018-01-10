gt-inspector-extension
gtInspectorPrivateChannels: composite
	<gtInspectorPresentationOrder: 3>
	^ composite fastTree
		title: [ 'Private Channels' translated ];
		display: [ self privateChannels ];
		when: [ self isAuthenticated ];
		children: [ :item | item children ];
		expandedUntil: 1;
		yourself