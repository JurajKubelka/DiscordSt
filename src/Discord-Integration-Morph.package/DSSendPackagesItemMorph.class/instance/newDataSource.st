instance creation
newDataSource
	^ (DSDataSource
		roots: self newPackages
		children: [ :eachChild | eachChild children ])
			maxDepth: 1;
			yourself