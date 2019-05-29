private
externalProjects: spec
	spec for: #'common' do: [
		spec
			configuration: 'Fuel' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/Pharo/Fuel/main';
					versionString: #stable;
					loads: 'FuelProgressUpdate' ];
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON:master/repository' ];
			baseline: 'Brick' with: [ 
				spec
					repository: 'github://pharo-graphics/Brick/src';
					loads: #default ];
			baseline: 'ExternalVolatileStore' with: [ 
				spec
					repository: 'github://feenkcom/external-volatile-store/src';
					loads: #minimal ];
			configuration: 'ZincHTTPComponents' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main/';
					versionString: #stable;
					loads: 'WebSocket' ] 
	].