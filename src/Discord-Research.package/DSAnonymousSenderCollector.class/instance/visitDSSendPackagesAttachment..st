visiting
visitDSSendPackagesAttachment: aDSSendPackagesAttachment 
	stream 
		nextPutAll: self indentString;
		nextPutAll: 'packages size: ';
		nextPutAll: aDSSendPackagesAttachment packages size asString;
		nextPutAll: ', selected: ';
		nextPutAll: aDSSendPackagesAttachment isSelected asString;
		nextPutAll: ', enabled: ';
		nextPutAll: aDSSendPackagesAttachment isEnabled asString;
		cr.
	self increaseIndent.
	aDSSendPackagesAttachment packages do: [ :eachPackage | 
		eachPackage accept: self ].
	self decreaseIndent.