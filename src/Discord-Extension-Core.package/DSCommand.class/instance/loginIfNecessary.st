private
loginIfNecessary
	"Ask user for credentials information and login if necessary."
	DSLoginCommand new
		client: self client;
		execute;
		waitForAnswer.