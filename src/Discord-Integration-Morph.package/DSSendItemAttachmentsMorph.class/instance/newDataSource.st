instance creation
newDataSource
	^ (DSDataSource
		roots: self newDataSourceRoots
		children: [ :eachChild | eachChild children ])
			maxDepth: 1;
			yourself