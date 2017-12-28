accessing - convenience
packagesItem
	"Return a packages item"
	<return: #DSSendPackagesItem>
	^ self collection 
		detect: [ :eachItem | eachItem isPackagesItem ]  
		ifFound: [ :anItem | anItem ] 
		ifNone: [ self collection add: DSSendPackagesItem new ]