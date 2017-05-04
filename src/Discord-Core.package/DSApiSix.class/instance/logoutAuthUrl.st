defaults - api
logoutAuthUrl
	"Return authentication URL to logout from Discord."
	^ self apiUrl / 'auth' / 'logout'