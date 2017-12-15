instance creation
newNameMorph
	^ (self registry name ifNil: [ '<nameless>' ]) asMorph asReadOnlyMorph