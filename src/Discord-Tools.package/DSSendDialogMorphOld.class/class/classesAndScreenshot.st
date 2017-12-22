gt-examples
classesAndScreenshot
	<gtExample>
	<label: 'Send a comment with a screenshot and two class definitions'>
	^ self screenshot
		classes: { self. Object. Collection. Morph. PanelMorph. BorderedMorph };
		yourself