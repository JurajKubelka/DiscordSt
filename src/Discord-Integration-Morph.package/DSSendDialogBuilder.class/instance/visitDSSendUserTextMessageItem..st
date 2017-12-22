as yet unclassified
visitDSSendUserTextMessageItem: aDSSendUserTextMessageItem 
	| itemMorph |
	itemMorph := self ensureSubmorphOfClass: DSSendUserTextMessageItemMorph.
	itemMorph item: aDSSendUserTextMessageItem.