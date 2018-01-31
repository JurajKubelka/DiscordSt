accessing
screenshotsAndPackages
	<gtExample>
	<label: 'With screenshots and packages'>
	^ self new
		add: DSSendScreenshotsAttachment twoRandomMorphs;
		add: DSSendPackagesAttachment withObjectAndCollectionClasses;
		yourself