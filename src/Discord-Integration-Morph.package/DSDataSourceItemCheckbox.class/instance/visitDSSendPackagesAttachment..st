visiting
visitDSSendPackagesAttachment: aDSSendPackagesAttachment 
	| labelMorph |
	labelMorph := 'Source code' asMorph asReadOnlyMorph.
	^ self newCheckboxMorphFor: aDSSendPackagesAttachment labelMorph: labelMorph