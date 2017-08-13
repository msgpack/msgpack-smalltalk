testing
testPackUnpackTimestamp
	"self debug: #testPackUnpackTimestamp"
	| packed unpacked secondsAndNanos |
	packed := self unixEpochTimestamp messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 6.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = 0.
	self assert: secondsAndNanos last = 0.
	
	packed := (self unixEpochTimestamp + 10 seconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 6.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = 10.
	self assert: secondsAndNanos last = 0.
	
	packed := (self unixEpochTimestamp + 10 nanoSeconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 10.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = 0.
	self assert: secondsAndNanos last = 10.
	
	packed := self max32Timestamp messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 10.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = (1 << 32).
	self assert: secondsAndNanos last = 0.
	
	packed := (self max32Timestamp - 10 nanoSeconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 10.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = ((1 << 32) -1).
	self assert: secondsAndNanos last = 999999990.
	
	packed := (self max32Timestamp + 10 nanoSeconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 10.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = (1 << 32).
	self assert: secondsAndNanos last = 10.
	
	packed := (self max64Timestamp) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 15.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = (1 << 34).
	self assert: secondsAndNanos last = 999999999.
	
	packed := (self max64Timestamp - 1 seconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 10.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = ((1 << 34) - 1).
	self assert: secondsAndNanos last = 999999999.
			
	packed := (self unixEpochTimestamp - 1 seconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 15.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = -1.
	self assert: secondsAndNanos last = 0.
	
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