gt-inspector-extension
gtUpdate: composite
	<gtInspectorPresentationOrder: 1>
	^ composite 
		updateOn: DSClientConnectedAnnouncement, DSUnauthenticatedAnnouncement
		from: [ self announcer ];
		yourself