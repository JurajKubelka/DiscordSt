visiting
visitDSMorphScreenshot: aDSMorphScreenshot 
	stream 
		nextPutAll: self indentString;
		nextPutAll: 'one morph screenshot, selected: ';
		nextPutAll: aDSMorphScreenshot isSelected asString;
		nextPutAll: ', enabled: ';
		nextPutAll: aDSMorphScreenshot isEnabled asString;
		cr