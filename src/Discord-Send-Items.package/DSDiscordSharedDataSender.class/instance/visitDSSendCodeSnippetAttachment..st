visiting
visitDSSendCodeSnippetAttachment: aDSSendCodeSnippetAttachment 
	messageBuilder fileName: 'code-snippet.st' string: aDSSendCodeSnippetAttachment codeSnippet.
	attachmentTypes add: (DSSharedData newCodeSnippet fileName: 'code-snippet.st'; yourself).