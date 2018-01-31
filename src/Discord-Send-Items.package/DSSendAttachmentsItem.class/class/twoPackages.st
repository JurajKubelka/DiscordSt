accessing
twoPackages
	<gtExample>
	<label: 'With a packages attachment'>
	^ self new
		add: DSSendPackagesAttachment withObjectAndCollectionClasses;
		yourself