adding
addPackages: aDSPackages 
	^ self add: (DSSendPackagesAttachment new packages: aDSPackages; yourself)