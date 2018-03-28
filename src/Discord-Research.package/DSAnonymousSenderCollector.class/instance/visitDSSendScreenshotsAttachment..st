visiting
visitDSSendScreenshotsAttachment: aDSSendScreenshotsAttachment 
	stream
		nextPutAll: self indentString;
		nextPutAll: 'number of screenshots: ';
		nextPutAll: aDSSendScreenshotsAttachment screenshots size asString;
		nextPutAll: ', is selected: ';
		nextPutAll: aDSSendScreenshotsAttachment isSelected asString;
		nextPutAll: ', enabled: ';
		nextPutAll: aDSSendScreenshotsAttachment isEnabled asString;
		cr.
	self increaseIndent.
	aDSSendScreenshotsAttachment screenshots do: [ :eachScreenshot | 
		eachScreenshot accept: self ].
	self decreaseIndent.