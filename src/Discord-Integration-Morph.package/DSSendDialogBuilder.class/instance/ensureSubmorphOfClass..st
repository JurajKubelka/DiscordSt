private
ensureSubmorphOfClass: aDSSendItemMorphClass 
	^ self morph submorphs 
		detect: [ :eachMorph | eachMorph class = aDSSendItemMorphClass ] 
		ifFound: [ :aMorph | aMorph ] 
		ifNone: [ | newMorph |
			newMorph := aDSSendItemMorphClass new.
			itemIndex > 1 
				ifTrue: [ | previousMorph |
					previousMorph := self morph submorphs at: itemIndex - 1.
					self morph addMorph: newMorph after: previousMorph ]
				ifFalse: [ 
					self morph addMorphBack: newMorph ].
			newMorph ]