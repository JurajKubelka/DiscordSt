execute
execute
	| fields value url |
	fields := self message embeds flatCollect: [ :eachEmbed | eachEmbed fields select: #isFuel ].
	self assert: fields size equals: 1.
	value := fields first value.
	url := self extractUrl: value.
	self loadId: (url query at: DSPharoLinkGenerator idQuery).
	self data: (url query at: DSPharoLinkGenerator dataQuery).
	