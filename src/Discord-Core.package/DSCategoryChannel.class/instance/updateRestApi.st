private
updateRestApi
	self subordinateChannels ifNotNil: [ :aCollection | 
		aCollection do: [ :eachChannel | eachChannel restApi: self restApi ] ]