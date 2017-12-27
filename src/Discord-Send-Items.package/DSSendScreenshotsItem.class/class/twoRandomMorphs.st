examples
twoRandomMorphs
	<gtExample>
	<label: 'With a random morph'>
	^ self new
		addMorph: World submorphs atRandom;
		addMorph: World submorphs atRandom;
		yourself.