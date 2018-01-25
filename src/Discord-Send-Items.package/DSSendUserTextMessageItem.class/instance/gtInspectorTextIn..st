gt-inspector-extension
gtInspectorTextIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite text
		title: [ 'Text' translated ];
		display: [ self text ];
		withGhostText: 'Empty text message...';
		yourself