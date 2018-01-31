testing
includes: anObject 
	^ self screenshots anySatisfy: [ :eachScreenshot | 
				eachScreenshot includes: anObject ]