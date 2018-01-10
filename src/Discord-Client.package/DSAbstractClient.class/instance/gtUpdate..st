gt-inspector-extension
gtUpdate: composite
	<gtInspectorPresentationOrder: 1>
	^ composite 
		updateOn: 
			DSClientConnectedAnnouncement, 
			DSClientDisconnectedAnnouncement,
			DSUnauthenticatedAnnouncement,
			DSAuthenticatedAnnouncement
		from: [ self announcer ];
		yourself