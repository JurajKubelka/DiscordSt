examples
basic
	<gtExample>
	^ self new
		packages: (DSSortClassesPerPackageCommand new classes: {self. Object}; execute; packages);
		extent: 300 @ 200;
		yourself.