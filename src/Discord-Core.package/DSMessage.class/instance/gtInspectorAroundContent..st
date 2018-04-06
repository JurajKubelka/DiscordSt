gt-inspector-extension
gtInspectorAroundContent: composite
	<gtInspectorPresentationOrder: 5.5>
	^ composite text 
		title: [ 'Around (Text)' ];
		display: [ | messagesAround |
			messagesAround := self restApi messagesAround: self.
			Text streamContents: [ :aStream | 
				messagesAround 
					do: [ :eachMessage | eachMessage printFullMessageOn: aStream ]
					separatedBy: [ aStream cr; nextPutAll: '-=-=-=-=-=-=-=-=-=-=-=-'; cr ] ] ];
		yourself