examples
animatedCircle
	<gtExample>
	<label: 'Preview of Animated GIF Circle'>
	^ self basic
		reader: AnimatedGIFReadWriter animatedCircleReader;
		yourself