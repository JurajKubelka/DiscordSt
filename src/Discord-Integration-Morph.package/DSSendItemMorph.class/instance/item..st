accessing
item: aSendItem
	| oldItem |
	aSendItem = item ifTrue: [ ^ self ].
	oldItem := item.
	item := aSendItem.
	self itemChangedFrom: oldItem to: aSendItem.