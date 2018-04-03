visiting
visitDSSendCodeSnippetAttachment: aDSSendCodeSnippetAttachment 
	stream 
		nextPutAll: self indentString;
		nextPutAll: 'code snippet selected: ';
		nextPutAll: aDSSendCodeSnippetAttachment isSelected asString;
		nextPutAll: ', enabled: ';
		nextPutAll: aDSSendCodeSnippetAttachment isEnabled asString;
		cr.