gt-inspector-extension
gtInspectorImage: composite
	<gtInspectorPresentationOrder: 2>
	^ composite morph
		title: 'Image';
		display: [ | aStream |
				aStream := self data readStream.
				ImageReadWriter formFromStream: aStream ];
		when: [ self hasData and: [ 
					[ ImageReadWriter formFromStream: self data readStream.
					true ]
					on: Error do: [ :exception | exception return: false ] ] ];
		yourself	