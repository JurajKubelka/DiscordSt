accessing
classes: aCollectionOfClasses
	self selection: (DSSortClassesPerPackageCommand new classes: aCollectionOfClasses; execute; packages)