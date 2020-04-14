baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec			
			baseline: 'DiscordStGateway' with: [
				spec repository: 'github://JurajKubelka/DiscordSt/src' ];
			baseline: 'ExternalVolatileStore' with: [ 
				spec
					repository: 'github://feenkcom/external-volatile-store/src';
					loads: #minimal ];
			baseline: 'Fuel' with: [ 
				spec 
					repository: 'github://theseion/Fuel:master/repository';
					loads: 'CoreWithExtras' ];

			package: #'Discord-Client' with: [
				spec requires: #( 
					#DiscordStGateway
					#'Fuel' #'ExternalVolatileStore' ). ];
			package: #'Discord-Client-Tests' with: [
				spec requires: #( #'Discord-Client' ) ]
	]