accessing - convenience
screenshotsItem
	"Return a screenshot item"
	<return: #DSSendScreenshotsItem>
	^ self collection 
		detect: [ :eachItem | eachItem isScreenshotItem ]  
		ifFound: [ :anItem | anItem ] 
		ifNone: [ self collection add: DSSendScreenshotsItem new ]