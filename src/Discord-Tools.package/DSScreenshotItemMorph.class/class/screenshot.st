examples
screenshot
	<gtExample>
	^ self new
		screenshot: World submorphs atRandom;
		isSelected: false;
		extent: 300@50;
		yourself