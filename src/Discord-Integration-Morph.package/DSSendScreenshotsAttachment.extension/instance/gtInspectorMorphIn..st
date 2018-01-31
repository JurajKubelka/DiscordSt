*Discord-Integration-Morph
gtInspectorMorphIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite morph
		title: [ 'Morph' translated ];
		display: [ | rootMorph |
			rootMorph := DSPanelMorph new.
			rootMorph listDirection: #topToBottom.
			self screenshots do: [ :eachScreenshot | | form |
				form := eachScreenshot form.
				form := form scaledToSize: 400 @ 400.
				rootMorph addMorphBack: form asMorph ].
			rootMorph ];
		when: [ self screenshots notEmpty ];
		yourself