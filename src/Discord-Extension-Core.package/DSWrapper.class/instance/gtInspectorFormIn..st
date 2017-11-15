gt-inspector-extension
gtInspectorFormIn: composite
	<gtInspectorPresentationOrder: 2>  
	^ composite morph 
		title: 'Screenshot';
		display: [ self screenshot asMorph ];
		when: [ self screenshot notNil ];
		yourself