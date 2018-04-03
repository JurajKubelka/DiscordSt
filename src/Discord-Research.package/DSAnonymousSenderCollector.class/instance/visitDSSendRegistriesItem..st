visiting
visitDSSendRegistriesItem: aDSSendRegistriesItem 
	stream
		nextPutAll: self indentString;
		nextPutAll: 'number of registries: ';
		nextPutAll: aDSSendRegistriesItem registries size asString;
		cr.
	self increaseIndent.
	stream
		nextPutAll: self indentString;
		nextPutAll: 'selected registry: ';
		nextPutAll: aDSSendRegistriesItem selectedRegistry className;
		nextPutAll: ', instance hash: ';
		nextPutAll: aDSSendRegistriesItem selectedRegistry identityHash asString;
		cr.
	(aDSSendRegistriesItem selectedRegistry class = DSSingletonClientRegistry) 
		ifTrue: [  
			stream
				nextPutAll: self indentString;
				nextPutAll: 'selected channel type: ';
				nextPutAll: aDSSendRegistriesItem selectedRegistry selectedChannel className;
				cr;
				nextPutAll: self indentString;
				nextPutAll: 'user hash: ';
				nextPutAll: aDSSendRegistriesItem selectedRegistry client me id hash asString;
				cr ].
	self decreaseIndent.