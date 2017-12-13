visiting
visitDSPackageSelection: aDSPackageSelection 
	^ Text streamContents: [ :stream | | existingClasses selectedClasses diff |
		stream << aDSPackageSelection itemName.
		existingClasses := aDSPackageSelection item classes.
		selectedClasses := aDSPackageSelection classes.
		diff := (existingClasses size - selectedClasses size ).
		diff > 0 ifTrue: [ 
			stream withAttribute: TextEmphasis italic do: [ 
				stream 
					space;
					nextPutAll: '(including ';
					print: diff;
					space;
					nextPutAll: 'more ';
					nextPutAll: ('class' asPluralBasedOn: diff);
					nextPut: $) ] ] ]