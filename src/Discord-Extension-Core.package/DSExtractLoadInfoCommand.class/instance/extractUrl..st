private
extractUrl: aString 
	| url |
	self assert: [ aString beginsWith: DSPharoLinkGenerator urlPrefix ].
	self assert: [ aString endsWith: DSPharoLinkGenerator urlSuffix ].
	url := aString copyFrom: DSPharoLinkGenerator urlPrefix size + 1 to: aString size - DSPharoLinkGenerator urlSuffix size.
	^ url asZnUrl 