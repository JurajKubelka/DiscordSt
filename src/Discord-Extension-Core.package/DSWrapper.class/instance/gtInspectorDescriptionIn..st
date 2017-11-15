gt-inspector-extension
gtInspectorDescriptionIn: composite
	<gtInspectorPresentationOrder: 0>  
	^ composite text 
		title: 'Description';
		display: [ self description ];
		when: [ self description notNil ];
		yourself