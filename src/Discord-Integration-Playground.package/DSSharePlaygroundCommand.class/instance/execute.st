execute
execute
	| items markdown codeSnippetCmd morph classes packages |
	items := DSSendItems new.
	codeSnippetCmd := DSExtractPlaygroundCodeSnippetCommand new playground: self playground; execute; yourself.
	markdown := codeSnippetCmd markdown.
	items userTextMessageItem text: String cr, markdown.
	morph := DSFindPlaygroundCommand new model: self playground; execute; morph.
	classes := (DSClassesInCodeSnippetCommand new codeSnippet: codeSnippetCmd codeSnippet; execute; classes).
	packages := (DSSortClassesPerPackageCommand new classes: classes; execute; packages).
	"Hack as it shares the whole package, we cannot select particular classes"
	packages do: [ :eachPackage | eachPackage classes: #(); isSelected: true ].
	items addMorphScreenshotAttachment: morph.
	items addPackagesAttachment: packages.
	items addCodeSnippetAttachment: codeSnippetCmd codeSnippet.
	items informationItem addPharoAndOsVersion.
	DSSendDialogMorph new
		items: items;
		extent: 400@500;
		openInWindow