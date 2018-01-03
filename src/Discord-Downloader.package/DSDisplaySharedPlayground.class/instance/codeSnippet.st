accessing
codeSnippet
	<return: #String>
	^ self sharedData
		detect: [ :eachData | eachData isCodeSnippet ]
		ifFound: [ :aData | aData string ]
		ifNone: [ '' ]
