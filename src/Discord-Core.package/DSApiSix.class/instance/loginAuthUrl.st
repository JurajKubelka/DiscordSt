defaults - api
loginAuthUrl
	"Return authentication URL to login with email and password."
	^ self apiUrl / 'auth' / 'login'