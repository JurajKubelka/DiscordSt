baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			package: #'Discord-Core';
			package: #'Discord-Core-Tests' with: [
				spec requires: #( #'Discord-Core' ). ];
			package: #'Discord-WebhookClient' with: [
				spec requires: #( #'Discord-Core' ). ];
			package: #'Discord-WebhookClient-Tests' with: [
				spec requires: #( #'Discord-WebhookClient' ). ];
			package: #'Discord-Client' with: [
				spec requires: #( #'Discord-Core' ). ];
			package: #'Discord-Client-Tests' with: [
				spec requires: #( #'Discord-Client' ). ];
			group: #'default' with: #( #'core' #'webhook' #'client' #'tests' );
			group: #'core' with: #( #'Discord-Core' );
			group: #'client' with: #( #'Discord-Client' );
			group: #'webhook' with: #( #'Discord-WebhookClient' );
			group: #'tests' with: #( #'Discord-Core-Tests' #'Discord-WebhookClient-Tests' #'Discord-Client-Tests' ).
	].