gt-inspector-extension
gtInspectorContent: composite
	<gtInspectorPresentationOrder: 1>
	^ composite text
		title: 'Content';
		display: [ self printFullMessage ];
		when: [ self hasContent or: [ self hasEmbeds ] ];
		yourself