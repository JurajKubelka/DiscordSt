announcement handling
itemChangedFrom: oldDSSendItem to: newDSSendItem
	oldDSSendItem registries unsubscribe: self.
	self submorphs first registries: newDSSendItem registries.
	newDSSendItem registries onSelectionChangedDo: [ :ann | 
		self submorphs second registry: ann selection ].