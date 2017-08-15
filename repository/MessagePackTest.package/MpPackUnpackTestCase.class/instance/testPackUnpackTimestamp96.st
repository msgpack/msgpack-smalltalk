testing
testPackUnpackTimestamp96
	"self debug: #testPackUnpackTimestamp"
	| packed unpacked secondsAndNanos |
	packed := (self max64Timestamp) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 15.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = (1 << 34).
	self assert: secondsAndNanos last = 999999999.
			
	packed := (self unixEpochTimestamp - 1 seconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 15.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = -1.
	self assert: secondsAndNanos last = 0.
	
	packed := (self unixEpochTimestamp - 1 nanoSeconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 15.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = -1.
	self assert: secondsAndNanos last = 999999999.
	
	packed := (self unixEpochTimestamp - 1 seconds - 999999999 nanoSeconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 15.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = -2.
	self assert: secondsAndNanos last = 1.
	
	packed := (self max96Timestamp) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 15.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = 9223372036854775807.
	self assert: secondsAndNanos last = 999999999.
	
	packed := (self min96Timestamp) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 15.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = -9223372036854775808.
	self assert: secondsAndNanos last = 0.