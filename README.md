msgpack-smalltalk
=================
[![CI](https://github.com/msgpack/msgpack-smalltalk/actions/workflows/main.yml/badge.svg)](https://github.com/msgpack/msgpack-smalltalk/actions/workflows/main.yml)

MessagePack serialization library for various Smalltalk dialects.

- Squeak
- Pharo
- VisualWorks
- VA Smalltalk
- Dolphin Smalltalk
- GNU Smalltalk (Beta)
- [Cuis](https://github.com/mumez/Cuis-Smalltalk-MessagePack)

Sources are put as [Cypress](https://github.com/CampSmalltalk/Cypress/blob/master/README.md) for the neutral accesses from various Smalltalk dialects.

## How to use ##

### Serialization ###
```Smalltalk
MpMessagePack pack: <your object>
```
or:
```Smalltalk
<your object> messagePacked
```

### Deserialization ###
```Smalltalk
MpMessagePack unpack: msgpackBytes
```
or:
```Smalltalk
Object fromMessagePack: msgBytes
```

### Samples ###

```Smalltalk
map := Dictionary new.
map at: 'someArray' asByteArray put: #(1 2.2 #[3 4 5]).
packed := map messagePacked.
(Object fromMessagePack: packed) inspect.
```

```Smalltalk
writeStream := WriteStream on: ByteArray new.
encoder := MpEncoder on: writeStream.
encoder nextPut: 1.
encoder nextPut: #(2 3).
dic := Dictionary new.
dic at: 4 put: 5.
encoder nextPut: dic.
encoder nextPut: 'four' asByteArray.
bytes := encoder contents.
readStream := ReadStream on: bytes.
decoder := MpDecoder on: readStream.
[decoder atEnd] whileFalse: [
        Transcript cr; show: decoder next printString
]
```
### How to install
Please read [HowToInstall.md](<https://github.com/msgpack/msgpack-smalltalk/blob/master/doc/HowToInstall.md>).

### Loading the latest development version

#### Squeak 4
```Smalltalk
Installer squeaksource
    project: 'MessagePack';
    install: 'ConfigurationOfMessagePack'. 
(Smalltalk at: #ConfigurationOfMessagePack) project development load
```

#### Pharo & Squeak 5+
```Smalltalk
Metacello new
  repository: 'github://msgpack/msgpack-smalltalk/repository';
  baseline: 'MessagePack';
  load.
```

You might need ```MpTypeMapper initializeAll ``` on new encoder/decoder-related updates.

#### Limitation on Squeak 5+

Starting with Squeak 5 and 6, DateAndTime only supports microsecond precision. Because of this, nanosecond values are not properly decoded as DateAndTime.
Two unit tests (testPackUnpackTimestamp64, 96) fail on Squeak 5 and 6.
