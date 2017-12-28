gt-inspector-extension
gtInspectorInfosIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastList
		title: [ 'Infos' translated ];
		display: [ self infos ];
		when: [ self infos notEmpty ];
		yourself.