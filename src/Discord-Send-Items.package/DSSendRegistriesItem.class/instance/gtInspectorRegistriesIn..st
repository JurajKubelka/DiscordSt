gt-inspector-extension
gtInspectorRegistriesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastList
			title: [ 'Registries' translated ];
			display: [ self registries ];
			when: [ self registries isEmptyOrNil not ];
			yourself