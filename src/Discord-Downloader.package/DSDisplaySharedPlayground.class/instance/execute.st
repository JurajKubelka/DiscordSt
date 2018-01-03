execute
execute
	| page |
	page := GTPlayPage new.
	page saveContent: self codeSnippet.
	playground := GTPlayground new.
	playground entity: page.
	self sharedData do: [ :eachData | eachData accept: self ].
	window := playground open.
	postExecutions do: #value.