actions
share: examples 
	| returnValues sourceCode description |
	returnValues := examples collect: #returnValue.
	sourceCode := examples collect: [ :eachExample | eachExample methodClass name, ' >> #', eachExample method sourceCode ].
	description := String streamContents: [ :aStream | 
		aStream << '```Smalltalk' << String cr << sourceCode << String cr << '```' ].
	DSWebhookClient new
		url: 'https://discordapp.com/api/webhooks/381056649210757140/LIZ7bm16Ag-EhQViNMTP7gg9jLAS2yfcQx-hY2s8GUEleuPF0EHpxaiGlM-ZS9LyFwmf';
		embedTitle: 'Example of the Day';
		embedUrl: 'http://gtoolkit.org';
		embedDescription: description;
		embedColor: Color green;
		with: [ :client | 
			returnValues size = 1 ifTrue: [ | object window | 
				object := returnValues anyOne.
				window := GTInspector openOn: object.
				"A hack so the UI can be rendered."
				500 milliSeconds wait.
				client embedMorph: window.
				window delete ] ];
		embedFooterText: 'Shared from Pharo Nautilus';
		send.