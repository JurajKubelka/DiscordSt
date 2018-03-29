actions
mayRequireCalypso: aSpecLoader
	"Load a patch to be able to extend GT-Playground with actions."

	| requirements |
	SystemVersion current highestUpdate > 60000
		ifFalse: [ ^ self ].
	requirements := #(#'integration-rubric' #'integration-playground' #'ui-worldmenu').
	self class environment
		at: #ClyBrowser
		ifPresent: [ requirements := requirements copyWith: #'integration-calypso' ].
	^ requirements