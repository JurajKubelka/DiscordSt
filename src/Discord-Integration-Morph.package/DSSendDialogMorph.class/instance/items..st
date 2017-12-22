accessing
items: aDSSendItems
	| oldItems |
	aDSSendItems = items ifTrue: [ ^ self ].
	oldItems := items.
	items := aDSSendItems.
	self itemsChangedFrom: oldItems to: aDSSendItems.