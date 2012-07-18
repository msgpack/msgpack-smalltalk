baselines
baseline101: spec 
	<version: '1.0.1-baseline'>
	spec for: #common do: [
		spec blessing: #baseline.
		spec 
			repository: 'http://www.squeaksource.com/MessagePack'.
		spec 
			package: 'MessagePack-Core';
			package: 'MessagePackTest' with: [ spec requires: 'MessagePack-Core' ].
		spec
			group: 'default' with: #('Core' 'Tests');
			group: 'Core' with: #('MessagePack-Core');
			group: 'Tests' with: #('MessagePackTest'). ].
	
	spec for: #squeakCommon do: [
		spec 
			package: 'MessagePack-Squeak-Core' with: [ spec requires: 'MessagePack-Core' ]. 
		spec
			group: 'Core' with: #('MessagePack-Squeak-Core'). ].
	