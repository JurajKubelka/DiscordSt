as yet unclassified
send: aDSMessageSendMorphCommand 
	| zipFile |
	zipFile := DSSerializePackagesWithTonelCommand new
		packages: (aDSMessageSendMorphCommand packages collect: #item);
		execute;
		zipFile.
	DSWebhookClient new 
		url: DSAocSettings adventOfCodeWebhookUrl;
		fileName: 'tonel.zip' fileReference: zipFile;
		fileName: 'code-snippet.txt' string: aDSMessageSendMorphCommand codeSnippet;
		embedImageMorph: aDSMessageSendMorphCommand morph;
		embedDescriptionMarkdown: [ :markdown | 
			markdown 
				text: aDSMessageSendMorphCommand message; cr;
				pharoScript: aDSMessageSendMorphCommand codeSnippet ];
		send. 