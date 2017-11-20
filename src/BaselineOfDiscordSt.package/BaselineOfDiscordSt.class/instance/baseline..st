baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			configuration: 'Fuel' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/Pharo/Fuel/main';
					versionString: #stable;
					loads: 'FuelProgressUpdate' ];
			configuration: 'ZincHTTPComponents' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main/';
					versionString: #stable;
					loads: 'WebSocket' ];
			configuration: 'NeoJSON' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main/';
					versionString: #stable;
					loads: 'default' ];
			baseline: 'Brick' with: [ 
				spec
					repository: 'github://pharo-graphics/Brick/src';
					loads: #development ];

			package: #'Discord-Announcements';

			package: #'Discord-Core' with: [
				spec requires: #( #'NeoJSON' ). ];
			package: #'Discord-Core-Tests' with: [
				spec requires: #( #'Discord-Core' ). ];

			package: #'Discord-WebhookClient' with: [
				spec requires: #( #'Discord-Core' ). ];
			package: #'Discord-WebhookClient-Tests' with: [
				spec requires: #( #'Discord-WebhookClient' ). ];

			package: #'Discord-Client' with: [
				spec requires: #( #'Discord-Announcements' #'Discord-Core' #'Discord-Gateway' #'Fuel' ). ];
			package: #'Discord-Client-Tests' with: [
				spec requires: #( #'Discord-Client' #'Discord-Core-Tests' ). ];

			package: #'Discord-Gateway' with: [
				spec requires: #( #'Discord-Announcements' #'Discord-Core' #'ZincHTTPComponents' ). ];
			package: #'Discord-Gateway-Tests' with: [
				spec requires: #( #'Discord-Gateway' #'Discord-Core-Tests' ). ];

			package: #'Discord-Tools' with: [
				"They depend on GT-Inspector and GT-Playground that are stadard tools" ];

			package: #'Discord-Extension-Core' with: [
				spec requires: #( #'Discord-Client' #'Discord-Tools' ). ];
			package: #'Discord-Extension-Core-Tests' with: [
				spec requires: #( #'Discord-Extension-Core' #'Discord-Core-Tests' ). ];
			package: #'Discord-Extension-UI' with: [
				spec requires: #( #'Discord-Extension-Core' ). ];
			package: #'Discord-Extension-UI-Tests' with: [
				spec requires: #( #'Discord-Extension-UI' ). ];

			package: #'Discord-Extension-Expertise' with: [
				spec requires: #( #'NeoJSON' ). ];
			package: #'Discord-Extension-Expertise-Tests' with: [
				spec requires: #( #'Discord-Extension-Expertise' ). ];
			
			package: #'Discord-Examples' with: [
				spec requires: #( #'Discord-WebhookClient' #'Discord-Extension-Expertise' #'Discord-Client' #'Discord-Announcements' "GT-Inspector" ). ];

			package: #'Discord-UI-Brick' with: [ 
				spec requires: #( #'Brick' #'Discord-Core' ) ];

			group: #'default' with: #( #'core' #'webhook' #'client' #'tests' #'extensions' #'ui' #'expertise' #'tools' #'examples' );
			group: #'core' with: #( #'Discord-Core' );
			group: #'client' with: #( #'Discord-Client' );
			group: #'webhook' with: #( #'Discord-WebhookClient' );
			group: #'tools' with: #( #'Discord-Tools' );
			group: #'examples' with: #( #'Discord-Examples' );
			group: #'extensions' with: #( #'Discord-Extension-Core' #'expertise' );
			group: #'expertise' with: #( #'Discord-Extension-Expertise' );
			group: #'ui' with: #( #'Discord-Extension-UI' #'Discord-UI-Brick' );
			group: #'tests' with: #( #'Discord-Core-Tests' #'Discord-WebhookClient-Tests' #'Discord-Client-Tests' #'Discord-Gateway-Tests' #'Discord-Extension-Core-Tests' #'Discord-Extension-UI-Tests' #'Discord-Extension-Expertise-Tests' ).
	].