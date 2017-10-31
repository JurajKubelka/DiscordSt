example
threeItems
	<gtExample>
	^ self new
		add: DSMessage content;
		add: DSMessage empty;
		add: DSMessage embedDescription;
		yourself