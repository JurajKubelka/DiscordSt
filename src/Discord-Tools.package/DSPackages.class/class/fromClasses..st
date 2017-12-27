instance creation
fromClasses: aCollectionOfClasses 
	"Return instance of me with given classes and their packages."
	<return: #DSPackages>
	^ (DSSortClassesPerPackageCommand new classes: aCollectionOfClasses; execute; packages)