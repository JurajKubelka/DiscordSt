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
				spec requires: #( #'Discord-Client' #'Discord-Core-Tests' #'Discord-Gateway-Tests' ). ];

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

			"core (very basic) options"
			group: #'webhook' with: #( #'Discord-WebhookClient' );
			group: #'bot' with: #( #'Discord-Client' );
			group: #'client' with: #( #'Discord-Client' );
			group: #'tests-core' with: #( #'Discord-Core-Tests' #'Discord-WebhookClient-Tests' #'Discord-Client-Tests' #'Discord-Gateway-Tests' );
			group: #'core' with: #( #'webhook' #'bot' #'client' #'tests-core' );

			"extensions"
			group: #'examples' with: #( #'Discord-Examples' );
			group: #'expertise' with: #( #'Discord-Extension-Expertise' );
			group: #'extensions' with: #( #'Discord-Extension-Core' #'expertise' );
			group: #'ui-light' with: #( #'Discord-Extension-UI' );
			group: #'ui-full' with: #( #'ui-light' #'Discord-UI-Brick' );
			group: #'tests-extensions' with: #( #'tests-core' #'Discord-Extension-Core-Tests' #'Discord-Extension-UI-Tests' #'Discord-Extension-Expertise-Tests' );

			"light options (no Bloc/Brick)"
			group: #'light' with: #( #'core' #'extensions' #'expertise' #'ui-light' #'examples' );
			group: #'tests-light' with: #( #'tests-core' #'tests-extensions' );
			
			"full (all packages including Bloc/Brick) options"
			group: #'full' with: #( #'light' #'ui-full' );
			group: #'tests-full' with: #( #'tests-light' );
			
			"default"
			group: #'default' with: #( #'light' #'tests' );
			group: #'all' with: #( #'full' #'tests-all' );
			group: #'tests' with: #( #'tests-light' );
			group: #'tests-all' with: #( #'tests-full' ).
	].