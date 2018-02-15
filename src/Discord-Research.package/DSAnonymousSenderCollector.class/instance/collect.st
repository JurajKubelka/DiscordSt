actions
collect
	output := String streamContents: [ :aStream | 
		stream := aStream.
		indent := 0.
		self items do: [ :eachItem | eachItem accept: self ] ]