accessing - computed
form
	"Return all selected screenshots as one Form object"
	<return: #Form>
	| forms form point |
	forms := self screenshots 
		select: [ :eachScreenshot | eachScreenshot isSelected ]
		thenCollect: #form.
	form := Form extent: (forms sum: #extent) depth: (forms max: #depth).
	point := 0 @ 0.
	forms do: [ :eachForm | 
		form := form mergeWith: eachForm at: point.
		point := point + (0 @ eachForm height) ].
	^ form