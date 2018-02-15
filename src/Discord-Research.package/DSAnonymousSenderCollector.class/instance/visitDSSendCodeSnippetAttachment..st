visiting
visitDSSendCodeSnippetAttachment: aDSSendCodeSnippetAttachment 
	stream 
		nextPutAll: self indentString;
		nextPutAll: 'code snippet selected: ';
		nextPutAll: aDSSendCodeSnippetAttachment isSelected asString;
		cr.