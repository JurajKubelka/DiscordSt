instance creation
newDataSource
	^ (DSDataSource
		roots: DSSelections new
		children: [ :item | item children ])
			maxDepth: 1;
			yourself