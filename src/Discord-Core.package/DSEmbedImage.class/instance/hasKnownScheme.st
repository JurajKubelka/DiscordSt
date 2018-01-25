testing
hasKnownScheme
	<return: #Boolean>
	^ [ self url asZnUrl enforceKnownScheme. true ]
		on: ZnUnknownScheme do: [ :exception | false ]