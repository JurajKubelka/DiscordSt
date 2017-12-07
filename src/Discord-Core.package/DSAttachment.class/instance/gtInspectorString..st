as yet unclassified
gtInspectorString: composite
	<gtInspectorPresentationOrder: 2>
	^ composite text 
		title: 'String';
		display: [ self data truncateWithElipsisTo: 100000 ];
		when: [ self hasData and: [ self data isString ] ];
		yourself			