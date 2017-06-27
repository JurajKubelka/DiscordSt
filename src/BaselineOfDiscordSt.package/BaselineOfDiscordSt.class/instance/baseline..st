baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			configuration: 'ZincHTTPComponents' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main/';
					versionString: #stable;
					loads: 'WebSocket' ];
			package: #'Discord-Core';
			package: #'Discord-Core-Tests' with: [
				spec requires: #( #'Discord-Core' ). ];

			package: #'Discord-WebhookClient' with: [
				spec requires: #( #'Discord-Core' ). ];
			package: #'Discord-WebhookClient-Tests' with: [
				spec requires: #( #'Discord-WebhookClient' ). ];

			package: #'Discord-Client' with: [
				spec requires: #( #'Discord-Core' #'Discord-Gateway' ). ];
			package: #'Discord-Client-Tests' with: [
				spec requires: #( #'Discord-Client' #'Discord-Core-Tests' ). ];

			package: #'Discord-Gateway' with: [
				spec requires: #( #'Discord-Core' #'ZincHTTPComponents' ). ];
			package: #'Discord-Gateway-Tests' with: [
				spec requires: #( #'Discord-Gateway' #'Discord-Core-Tests' ). ];

			package: #'Discord-Extension-Core' with: [
				spec requires: #( #'Discord-Client' ). ];
			package: #'Discord-Extension-Core-Tests' with: [
				spec requires: #( #'Discord-Extension-Core' #'Discord-Core-Tests' ). ];
			package: #'Discord-Extension-UI' with: [
				spec requires: #( #'Discord-Extension-Core' ). ];
			package: #'Discord-Extension-UI-Tests' with: [
				spec requires: #( #'Discord-Extension-UI' ). ];

			group: #'default' with: #( #'core' #'webhook' #'client' #'tests' #'extensions' #'ui' );
			group: #'core' with: #( #'Discord-Core' );
			group: #'client' with: #( #'Discord-Client' );
			group: #'extensions' with: #( #'Discord-Extension-Core' );
			group: #'webhook' with: #( #'Discord-WebhookClient' );
			group: #'ui' with: #( #'Discord-Extension-UI' );
			group: #'tests' with: #( #'Discord-Core-Tests' #'Discord-WebhookClient-Tests' #'Discord-Client-Tests' #'Discord-Gateway-Tests' #'Discord-Extension-Core-Tests' #'Discord-Extension-UI-Tests' ).
	].