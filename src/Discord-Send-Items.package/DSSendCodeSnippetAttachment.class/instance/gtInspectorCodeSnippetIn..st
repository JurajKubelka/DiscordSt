gt-inspector-extension
gtInspectorCodeSnippetIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite text
		title: [ 'Code Snippet' translated ];
		display: [ self codeSnippet ];
		withGhostText: 'Empty code snippet message...';
		yourself