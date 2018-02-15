visiting
visitDSPackageSelection: aDSPackageSelection 
	stream 
		nextPutAll: self indentString;
		nextPutAll: 'package selected: ';
		nextPutAll: aDSPackageSelection isSelected asString;
		cr.