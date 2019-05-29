baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec			
			baseline: 'DiscordStGateWay' with: [
				spec repository: 'github://JurajKubelka/DiscordSt/src' ];
			baseline: 'ExternalVolatileStore' with: [ 
				spec
					repository: 'github://feenkcom/external-volatile-store/src';
					loads: #minimal ];
			configuration: 'Fuel' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/Pharo/Fuel/main';
					versionString: #stable;
					loads: 'FuelProgressUpdate' ];

			package: #'Discord-Client' with: [
				spec requires: #( 
					#DiscordStGateWay
					#'Fuel' #'ExternalVolatileStore' ). ];
			package: #'Discord-Client-Tests' with: [
				spec requires: #( #'Discord-Client' ) ]
	]