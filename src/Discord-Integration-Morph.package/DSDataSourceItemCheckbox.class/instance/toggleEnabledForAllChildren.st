private
toggleEnabledForAllChildren
	| allChildren |
	self trace: 'disableAllChildren: '; traceCr: self tableItem identityHash.
	allChildren := self withAllChildrenOf: self tableItem.
	allChildren do: [ :eachTableItem | 
		eachTableItem = self tableItem ifFalse: [ 
			eachTableItem data isEnabled: self tableItem data isSelected ] ].