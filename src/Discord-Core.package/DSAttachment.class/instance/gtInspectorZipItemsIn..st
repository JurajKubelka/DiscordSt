gt-inspector-extension
gtInspectorZipItemsIn: composite
	<gtInspectorPresentationOrder: 3>
	^ composite fastList
		title: 'ZIP';
		display: [ ZipArchive new 
						readFrom: self data readStream;
						members ];
		when: [ self isZipArchive ];
		format: [ :zipFileMember | zipFileMember fileName ];
		selectionPopulate: #selection 
			entitled: 'Inspect the ZIP member'
			with: [ :list | list rawSelection gtInspectorInterestingObject ];
		send: [ :zipFileMemberOrNil | 
			zipFileMemberOrNil ifNotNil: [ :member | member contents ] ]