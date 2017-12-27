visiting
visitDSSendRegistriesItem: aDSSendRegistriesItem 
	| submorph |
	submorph := self ensureSubmorphOfClass: DSSendRegistriesItemMorph.
	submorph item: aDSSendRegistriesItem.
	submorph unsubscribeCancelAndSendActions: self morph.
	submorph 
		onCancelSend: #cancelAction to: self morph;
		onSendSend: #sendAction to: self morph.