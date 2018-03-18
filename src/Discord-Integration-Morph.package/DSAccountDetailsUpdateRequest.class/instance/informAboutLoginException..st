private
informAboutLoginException: exception
	| contentMorph dialog textModel |
	textModel := RubScrolledTextModel new.
	textModel setText: exception asString.
	contentMorph := textModel newScrolledText
		beWrapped;
		beReadOnly;
		extent: 200 @ 200;
		yourself.
	dialog := Smalltalk ui theme
		newPluggableDialogWindowIn: World
		title: 'Login Error'
		for: contentMorph.
	dialog useDefaultOKButton.
	^ dialog open