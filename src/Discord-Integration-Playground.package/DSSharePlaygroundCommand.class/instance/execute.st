execute
execute
	| items markdown codeSnippetCmd morph classes packages |
	items := DSSendItems new.
	codeSnippetCmd := DSExtractPlaygroundCodeSnippetCommand new playground: self playground; execute; yourself.
	markdown := codeSnippetCmd markdown.
	items userTextMessageItem text: String cr, markdown.
	morph := DSFindPlaygroundCommand new model: self playground; execute; morph.
	items screenshotsItem addMorph: morph.
	classes := (DSClassesInCodeSnippetCommand new codeSnippet: codeSnippetCmd codeSnippet; execute; classes).
	packages := (DSSortClassesPerPackageCommand new classes: classes; execute; packages).
	items packagesItem packages: packages.
	items informationItem addPharoAndOsVersion.
	items addCodeSnippetAttachment: codeSnippetCmd codeSnippet.
	DSSendDialogMorph new
		items: items;
		extent: 400@500;
		openInWindow