visiting
visitDSAnimatedGifScreenshot: aDSAnimatedGifScreenshot 
	stream 
		nextPutAll: self indentString;
		nextPutAll: 'one animated GIF screenshot of size:';
		nextPutAll: (aDSAnimatedGifScreenshot bytes 
			ifNil: [ '0' ] ifNotNil: [ :aBytes | aBytes size asString ]);
		nextPutAll: ', selected: ';
		nextPutAll: aDSAnimatedGifScreenshot isSelected asString;
		cr