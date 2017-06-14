as yet unclassified
gtInspectorServers: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastList
		title: 'Servers';
		display: [ self servers ];
		when: [ self isAuthenticated ];
		yourself