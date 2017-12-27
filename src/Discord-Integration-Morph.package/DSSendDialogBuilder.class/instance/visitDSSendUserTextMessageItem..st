visiting
visitDSSendUserTextMessageItem: aDSSendUserTextMessageItem 
	| itemMorph |
	itemMorph := self ensureSubmorphOfClass: DSSendUserTextMessageItemMorph.
	itemMorph item: aDSSendUserTextMessageItem.