as yet unclassified
ensureSubmorphOfClass: aDSSendItemMorphClass 
	^ self morph submorphs 
		detect: [ :eachMorph | eachMorph class = aDSSendItemMorphClass ] 
		ifFound: [ :aMorph | aMorph ] 
		ifNone: [ | newMorph |
			newMorph := aDSSendItemMorphClass new.
			self morph addMorphBack: newMorph.
			^ newMorph ]