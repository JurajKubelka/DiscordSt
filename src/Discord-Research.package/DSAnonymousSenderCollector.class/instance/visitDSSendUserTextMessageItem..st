visiting
visitDSSendUserTextMessageItem: aDSSendUserTextMessageItem 
	stream 
		nextPutAll: self indentString;
		nextPutAll: 'user message size: ';
		nextPutAll: aDSSendUserTextMessageItem text size asString;
		cr.
	self increaseIndent.
	stream
		nextPutAll: self indentString;
		nextPutAll: 'user message includes code snippet: ';
		nextPutAll: (aDSSendUserTextMessageItem text includesSubstring: '```') asString;
		cr;
		nextPutAll: self indentString;
		nextPutAll: 'user message mentions a code: ';
		nextPutAll: (aDSSendUserTextMessageItem text includesSubstring: '`') asString;
		cr.
	self decreaseIndent.