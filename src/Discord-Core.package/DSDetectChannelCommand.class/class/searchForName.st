examples
searchForName
	<gtExample>
	^ self new
		channels: DSCategoryChannel withTwoChannels;
		satisfiedBy: [ :aChannel | aChannel name = 'ROCKET CHEESE' ];
		execute;
		satisfyingChannel