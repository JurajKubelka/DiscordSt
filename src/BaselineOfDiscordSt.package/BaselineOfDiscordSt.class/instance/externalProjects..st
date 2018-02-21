private
externalProjects: spec
	spec for: #'common' do: [
		spec
			configuration: 'Fuel' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/Pharo/Fuel/main';
					versionString: #stable;
					loads: 'FuelProgressUpdate' ];
			configuration: 'NeoJSON' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main/';
					versionString: #stable;
					loads: 'default' ];
			baseline: 'Brick' with: [ 
				spec
					repository: 'github://pharo-graphics/Brick/src';
					loads: #development ];
			baseline: 'Commander' with: [
				spec repository: 'github://dionisiydk/Commander:v0.4.x' ]
	].
	spec for: #'pharo6.x' do: [
		spec
			configuration: 'ZincHTTPComponents' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main/';
					versionString: #stable;
					loads: 'WebSocket' ] 
	].
	spec for: #'pharo7.x' do: [
		spec
			configuration: 'ZincHTTPComponents' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main/';
					versionString: #bleedingEdge;
					loads: 'WebSocket' ]
	].