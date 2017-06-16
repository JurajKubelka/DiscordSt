gt-inspector-extension
gtInspectorTextStackIn: composite
	<gtInspectorPresentationOrder: 1>  
	^ composite text 
		title: 'Stack';
		display: [ self textStack ];
		when: [ self textStack notNil ];
		yourself