tests
testShowPreview
	| model |
	morph := self classToTest new.
	model := World submorphs atRandom.
	morph
		model: model;
		getTextSelector: #printString;
		getMorphSelector: #yourself.
	window := morph openInWindow.
	morph simulateClick.
	morph showPreview.
	self assert: window notNil.