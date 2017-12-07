instance creation
newPackageListMorph
	^ DSPackageListMorph new
		height: self theme listFont pixelSize * 3;
		vResizing: #shrinkWrap;
		yourself