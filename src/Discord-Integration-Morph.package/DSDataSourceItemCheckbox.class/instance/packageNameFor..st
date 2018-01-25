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
						nextPutAll: '(including '.
				selectedClasses ifNotEmpty: [ 
					stream 
						print: selectedClasses size;
						space;
						nextPutAll: (selectedClasses size = 1 ifTrue: [ 'class' ] ifFalse: [ 'classes' ]);
						nextPutAll: ' below' ].
				diff > 0 ifTrue: [ 
					selectedClasses ifNotEmpty: [ stream nextPutAll: ' and ' ].
					stream print: diff; space.
					selectedClasses ifNotEmpty: [ stream nextPutAll: 'more ' ].
					stream nextPutAll: (diff = 1 ifTrue: [ 'class' ] ifFalse: [ 'classes' ]) ].
				stream nextPut: $) ] ] ]