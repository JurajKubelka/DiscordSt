gt-inspector-extension
gtInspectorDirectChannels: composite
	<gtInspectorPresentationOrder: 3>
	^ composite fastList
		title: [ 'Direct Channels' translated ];
		display: [ self directChannels ];
		when: [ self isAuthenticated ];
		selectionAct: [ :presentation | | id |
			id := presentation rawSelection recipients first id.
			Clipboard clipboardText: id asString. ]
			entitled: 'Copy Recipient''s id';
		enableFilter;
		yourself