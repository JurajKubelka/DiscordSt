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
				spec requires: #( #'Discord-WebhookClient' #'Discord-Core-Tests' ). ];

			package: #'Discord-Client' with: [
				spec requires: #( #'Discord-Announcements' #'Discord-Core' #'Discord-Gateway' #'Fuel' ). ];
			package: #'Discord-Client-Tests' with: [
				spec requires: #( #'Discord-Client' #'Discord-Core-Tests' #'Discord-Gateway-Tests' ). ];

			package: #'Discord-Gateway' with: [
				spec requires: #( #'Discord-Announcements' #'Discord-Core' #'ZincHTTPComponents' ). ];
			package: #'Discord-Gateway-Tests' with: [
				spec requires: #( #'Discord-Gateway' #'Discord-Core-Tests' ). ];

			package: #'Discord-Tools' with: [
				"It depends on GT-Inspector and GT-Playground that are standard tools"
				spec 
					preLoadDoIt: #preLoadTonel:;
					requires: #( #'Discord-Core' ) ];
			package: #'Discord-Tools-Tests' with: [
				spec requires: #( #'Discord-Tools' ) ];

			package: #'Discord-Extension-Core' with: [
				spec 
					preLoadDoIt: #preLoadPlayground:;
					requires: #( #'Discord-Client' #'Discord-Tools' ) ];
			package: #'Discord-Extension-Core-Tests' with: [
				spec requires: #( #'Discord-Extension-Core' #'Discord-Core-Tests' #'Discord-Tools-Tests' ). ];
			package: #'Discord-Extension-UI' with: [
				spec requires: #( #'Discord-Extension-Core' ). ];
			package: #'Discord-Extension-UI-Tests' with: [
				spec requires: #( #'Discord-Extension-UI' ). ];

			package: #'Discord-Extension-Expertise' with: [
				spec requires: #( #'NeoJSON' ). ];
			package: #'Discord-Extension-Expertise-Tests' with: [
				spec requires: #( #'Discord-Extension-Expertise' ). ];
			
			package: #'Discord-Examples' with: [
				spec requires: #( 
					#'Discord-WebhookClient' #'Discord-Extension-Expertise' 
					#'Discord-Client' #'Discord-Announcements' "GT-Inspector" ). ];

			package: #'Discord-UI-Brick' with: [ 
				spec requires: #( #'Brick' #'Discord-Core' ) ];
			
			"New packages to clean."
			package: #'Discord-Mock' with: [ 
				spec requires: #( #'Discord-Announcements' #'Discord-Core' ) ];
			
			package: #'Discord-Registry-Core' with: [ 
				spec requires: #( 
					#'Discord-Core' #'Discord-Client' #'Discord-Mock' ) ];
			
			package: #'Discord-Registry-Core-Tests' with: [ 
				spec requires: #( #'Discord-Registry-Core' ) ];

			package: #'Discord-Send-Items' with: [ 
				spec requires: #( #'Discord-Registry-Core' #'Discord-Tools' #'Discord-WebhookClient' ) ];

			package: #'Discord-Send-Items-Tests' with: [ 
				spec requires: #( #'Discord-Send-Items' ) ];

			package: #'Discord-Integration-Core' with: [ 
				spec requires: #( #'Discord-Core' #'Discord-Registry-Core' "#'Tonel'" ) ];
			
			package: #'Discord-Integration-Morph' with: [ 
				spec requires: #( 
					#'Discord-Announcements' #'Discord-Mock' #'Discord-Registry-Core' 
					#'Discord-Send-Items' #'Discord-Tools' ) ];
			
			package: #'Discord-Integration-Morph-Tests' with: [ 
				spec requires: #( #'Discord-Integration-Morph' ) ];
			
			package: #'Discord-Integration-Playground' with: [ 
				spec requires: #( 
					#'Discord-Core' #'Discord-Integration-Core' #'Discord-Integration-Morph' 
					#'Discord-Send-Items' #'Discord-Tools' ) ];
			
			package: #'Discord-Downloader' with: [ 
				spec requires: #( 
					#'Discord-Core' #'Discord-Integration-Core' 
					#'Discord-Send-Items' #'Discord-Integration-Playground' ) ];
			
			package: #'Discord-Downloader-Tests' with: [ 
				spec requires: #( #'Discord-Downloader' #'Discord-Core-Tests' ) ];
			
			"Webhook"
			group: #'src-webhook' with: #( #'Discord-WebhookClient' );
			group: #'tests-webhook' with: #( #'Discord-WebhookClient-Tests' );
			group: #'webhook' with: #( #'src-webhook' #'tests-webhook' );
			
			"Bot App and User Client"
			group: #'src-client' with: #( #'Discord-Client' );
			group: #'tests-client' with: #( #'Discord-Client-Tests' );
			group: #'client' with: #( #'src-client' #'tests-client' );
			
			"core"
			group: #'src-core' with: #( #'src-webhook' #'src-client' );
			group: #'tests-core' with: #( #'tests-webhook' #'tests-client' );
			group: #'core' with: #( #'src-core' #'tests-core' );

			"extensions"
			group: #'examples' with: #( #'Discord-Examples' );
			group: #'expertise' with: #( #'Discord-Extension-Expertise' );
			group: #'extensions' with: #( #'Discord-Extension-Core' #'expertise' );
			group: #'ui-light' with: #( #'Discord-Extension-UI' );
			group: #'ui-full' with: #( #'ui-light' #'Discord-UI-Brick' );
			group: #'tests-extensions' with: #( #'tests-core' #'Discord-Tools-Tests' #'Discord-Extension-Core-Tests' #'Discord-Extension-UI-Tests' #'Discord-Extension-Expertise-Tests' );
			
			"integration: packages to clean"
			group: #'downloader' with: #( #'Discord-Downloader' );
			group: #'integration-playground' with: #( #'Discord-Integration-Playground' );
			group: #'src-integration' with: #( #'downloader' #'integration-playground' );
			group: #'tests-integration' with: #( 
				#'src-integration'
				#'tests-core'
				#'Discord-Tools-Tests'
				#'Discord-Downloader-Tests' #'Discord-Integration-Morph-Tests'
				#'Discord-Send-Items-Tests' #'Discord-Registry-Core-Tests' );

			"light options (no Bloc/Brick)"
			group: #'src-light' with: #( 
				#'src-core' #'extensions' #'expertise' #'ui-light' #'examples' #'src-integration' );
			group: #'tests-light' with: #( 
				#'tests-core' #'tests-extensions' #'tests-integration' );
			group: #'light' with: #( #'src-light' #'tests-light' );
			
			"full (all packages including Bloc/Brick) options"
			group: #'src-full' with: #( #'src-light' #'ui-full' );
			group: #'tests-full' with: #( #'tests-light' );
			group: #'full' with: #( #'src-full' #'tests-full' );
			
			"default"
			group: #'default' with: #( #'light' #'tests' );
			group: #'tests' with: #( #'tests-light' );

			"all"
			group: #'all' with: #( #'full' #'tests-all' );
			group: #'tests-all' with: #( #'tests-full' ).
	].