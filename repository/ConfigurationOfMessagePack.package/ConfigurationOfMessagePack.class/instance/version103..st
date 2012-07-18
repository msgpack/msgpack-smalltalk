versions
version103: spec 
	<version: '1.0.3' imports: #('1.0.1-baseline') >
	
	spec for: #common do: [
		spec blessing: #beta.
		spec author: 'Masashi Umezawa'.
		spec 
			package: 'MessagePack-Core' with: 'MessagePack-Core-mu.15';
			package: 'MessagePackTest' with: 'MessagePackTest-mu.3' ].
	spec for: #squeakCommon do: [
		spec 
			package: 'MessagePack-Squeak-Core' with: 'MessagePack-Squeak-Core-mu.2'].