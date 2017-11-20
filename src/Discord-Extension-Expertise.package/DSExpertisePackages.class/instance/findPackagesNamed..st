enumerating
findPackagesNamed: aString 
	^ self select: [ :eachPackageWithExperts | 
		eachPackageWithExperts package 
			includesSubstring: aString
			caseSensitive: false ]