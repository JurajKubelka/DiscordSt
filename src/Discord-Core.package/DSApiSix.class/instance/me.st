public
me
	^ self 
		cacheAt: 'me'
		ifAbsentPut: [ (self newZnClientAuthenticated)
			url: self usersMeUrl;
			contentReader: [ :entity | DSUser fromJsonString: entity contents ];
			get ]