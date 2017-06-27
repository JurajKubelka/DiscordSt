private
loginActionBlock
	"Return a Send action that is executed when user clicks on a Login button."
	^ [ :model | 
			self 
				email: model emailInput text 
				password: model passwordInput text; 
				login ]