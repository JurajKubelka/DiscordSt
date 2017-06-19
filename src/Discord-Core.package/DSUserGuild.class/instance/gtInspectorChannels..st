as yet unclassified
gtInspectorChannels: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastList
		title: 'Channels';
		display: [ self channels ];
		when: [ self isAuthenticated ];
		yourself