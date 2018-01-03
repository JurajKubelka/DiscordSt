execute
execute
	| memory repository inspector |
	memory := FileSystem memory.
	ZipArchive new 
		readFrom: self bytes readStream;
		extractAllTo: memory root.
	repository := TonelRepository new directory: memory root.
	inspector := MCFileRepositoryInspector repository: repository workingCopy: nil.
	window := inspector show.