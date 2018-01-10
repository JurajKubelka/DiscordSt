gt-inspector-extension
gtUpdate: composite
	<gtInspectorPresentationOrder: 1>
	^ composite 
		updateOn: DSClientConnectedAnnouncement 
		from: [ self announcer ];
		yourself