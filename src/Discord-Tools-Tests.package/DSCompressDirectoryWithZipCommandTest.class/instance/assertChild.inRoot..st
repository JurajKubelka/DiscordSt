as yet unclassified
assertChild: aFileReference inRoot: rootDirectory 

	aFileReference = rootDirectory ifTrue: [ ^ self ].

	aFileReference basename = 'dir1' ifTrue: [ ^ self ].
	aFileReference basename = 'dir2' ifTrue: [ ^ self ].

	aFileReference basename = 'file1.txt' ifTrue: [ 
		^ self assert: aFileReference contents equals: 'file 1 contents with ™' ].
	aFileReference basename = 'file2.txt' ifTrue: [ 
		^ self assert: aFileReference contents equals: 'file 2 contents' ].
	aFileReference basename = 'file3.txt' ifTrue: [ 
		^ self assert: aFileReference contents equals: 'file 3 contents' ].
	aFileReference basename = 'file4.txt' ifTrue: [ 
		^ self assert: aFileReference contents equals: 'file 4 contents' ].
	
	self assert: false description: [ 'Unknown file reference ', aFileReference asString ].
