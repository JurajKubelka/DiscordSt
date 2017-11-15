ui
basicSpecLayout
	"Return a basic Spec layout that counts with email and password label and input fields."
	^ SpecColumnLayout composed
		newRow: [ :row | row add: #emailLabel width: 70. row add: #emailInput ] 
			height: ComposableModel inputTextHeight;
		newRow: [ :row | row add: #passwordLabel width: 70. row add: #passwordInput ] 
			height: ComposableModel inputTextHeight;
		yourself