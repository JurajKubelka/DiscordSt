private
updateSubmorphs
	self registry icon ifNotNil: [ :form | 
		self submorphs first form: form ].
	self registry name ifNotNil: [ :string | 
		self submorphs second contents: string ].
	