announcement handling
itemChangedFrom: oldDSSendItem to: newDSSendItem
	"Delete previous screenshot presentations and new presentations."
	self submorphs withIndexDo: [ :submorph :index | 
		index > 1 ifTrue: [ submorph delete ] ].
	newDSSendItem screenshots do: [ :eachScreenshot | | morph |
		morph := self newCheckboxMorphOn: eachScreenshot.
		self addMorphBack: morph. ]