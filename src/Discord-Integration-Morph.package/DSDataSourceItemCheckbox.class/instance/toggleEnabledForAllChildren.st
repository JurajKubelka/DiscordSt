private
toggleEnabledForAllChildren
	| allChildren |
	true ifTrue: [ ^ self ].
	allChildren := self withAllChildrenOf: self tableItem.
	allChildren do: [ :eachTableItem | 
		eachTableItem = self tableItem ifFalse: [ 
			eachTableItem data isEnabled: self tableItem data isSelected ] ].