visiting
visitDSSendCodeSnippetAttachment: aDSSendCodeSnippetAttachment 
	| labelMorph |
	labelMorph := 'Playground Code Snippet' asMorph asReadOnlyMorph.
	^ self newCheckboxMorphFor: aDSSendCodeSnippetAttachment labelMorph: labelMorph.