instance creation
fromClasses: aCollectionOfClasses 
	"Return instance of me with given classes and their packages."
	<return: #DSSelections>
	^ (DSSortClassesPerPackageCommand new classes: aCollectionOfClasses; execute; packages)