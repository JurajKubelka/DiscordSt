visiting
visitDSPackageSelection: aDSPackageSelection 
	stream 
		nextPutAll: self indentString;
		nextPutAll: 'package selected: ';
		nextPutAll: aDSPackageSelection isSelected asString;
		nextPutAll: ', enabled: ';
		nextPutAll: aDSPackageSelection isEnabled asString;
		cr.