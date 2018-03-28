private
addSourceCodeTo: items codeSnippet: codeSnippet
	| classes packages item |
	classes := (DSClassesInCodeSnippetCommand new codeSnippet: codeSnippet; execute; classes).
	packages := (DSSortClassesPerPackageCommand new classes: classes; execute; packages).
	"Hack as it shares the whole package, we cannot select particular classes"
	packages do: [ :eachPackage | eachPackage classes: #(); isSelected: true ].
	item := items addPackagesAttachment: packages.
	item 
		isSelected: DSSharePlaygroundSettings wasPackagesSelected;
		onSelectionChangedDo: [ :announcement | 
			DSSharePlaygroundSettings wasPackagesSelected: announcement state ].