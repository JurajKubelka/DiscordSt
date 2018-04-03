*Discord-Integration-Calypso
excludeInCalypsoMethodContext
	<excludeShareOnDiscord>
	^ (editorModel class = RubScrolledTextModel) and: [ 
		editorModel interactionModel isKindOf: ClyMethodCodeEditorTool ]