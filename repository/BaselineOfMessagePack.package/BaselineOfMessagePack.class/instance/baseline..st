baseline
baseline: spec 
	<baseline>
	spec for: #common do: [
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
	spec for: #pharo do: [
		spec preLoadDoIt: #preLoadForPharo.
		spec 
			package: 'MessagePack-Pharo-Core' with: [ spec requires: 'MessagePack-Squeak-Core' ]. 
		spec
			group: 'Core' with: #('MessagePack-Pharo-Core'). ].