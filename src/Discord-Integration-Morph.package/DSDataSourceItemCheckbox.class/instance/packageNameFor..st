private - accessing
packageNameFor: aDSPackageSelection 
	^ Text streamContents: [ :stream | 
		stream << aDSPackageSelection itemName.
		aDSPackageSelection isSelected ifTrue: [ 
			stream withAttribute: TextEmphasis italic do: [ 
				| existingClasses selectedClasses diff |
				existingClasses := aDSPackageSelection item classes.
				selectedClasses := aDSPackageSelection classes.
				diff := (existingClasses size - selectedClasses size ).
				stream 
					space;
					nextPutAll: '(including ';
					print: selectedClasses size;
					space;
					nextPutAll: ('class' asPluralBasedOn: selectedClasses size);
					nextPutAll: ' below'.
				diff > 0 ifTrue: [ 
					stream
						nextPutAll: ' and ';
						print: diff;
						space;
						nextPutAll: 'more ';
						nextPutAll: ('class' asPluralBasedOn: diff) ].
				stream nextPut: $) ] ] ]