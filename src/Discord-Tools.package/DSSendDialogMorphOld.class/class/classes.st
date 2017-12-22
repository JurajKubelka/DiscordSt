gt-examples
classes
	<gtExample>
	<label: 'Send a comment with two class definitions'>
	^ self empty
		classes: { self. Object. Collection. Morph. PanelMorph. BorderedMorph };
		yourself