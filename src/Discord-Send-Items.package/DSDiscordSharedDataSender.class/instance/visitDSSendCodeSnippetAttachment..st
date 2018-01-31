visiting
visitDSSendCodeSnippetAttachment: aDSSendCodeSnippetAttachment 
	aDSSendCodeSnippetAttachment isSelected ifFalse: [ ^ self ].
	messageBuilder fileName: 'code-snippet.st' string: aDSSendCodeSnippetAttachment codeSnippet.
	attachmentTypes add: (DSSharedData newCodeSnippet fileName: 'code-snippet.st'; yourself).