baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'DiscordStCore' with: [
				spec repository: 'github://JurajKubelka/DiscordSt/src' ];
			configuration: 'ZincHTTPComponents' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main/';
					versionString: #stable;
					loads: 'WebSocket' ];

			package: #'Discord-Announcements';
			package: #'Discord-Gateway' with: [
				spec requires: #( #'Discord-Announcements' #DiscordStCore #'ZincHTTPComponents' ). ];
			package: #'Discord-Gateway-Tests' with: [
				spec requires: #( #'Discord-Gateway' ) ]
	]