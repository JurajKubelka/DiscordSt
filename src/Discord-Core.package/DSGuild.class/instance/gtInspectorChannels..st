gt-inspector-extension
gtInspectorChannels: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTree
		title: [ 'Channels' translated ];
		display: [ self channels ];
		when: [ self hasChannels or: [ self isAuthenticated ] ];
		children: [ :item | item children ];
		expandedUntil: 1;
		yourself