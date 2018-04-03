private
withAllChildrenOf: aFTBasicItem 
	^ aFTBasicItem children
		inject: { aFTBasicItem }
		into: [ :all :each | all, (self withAllChildrenOf: each) ]