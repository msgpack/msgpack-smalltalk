msgpack-smalltalk
=================

MessagePack serialization library for various Smalltalk dialects.

We are moving from [Google Code site](http://code.google.com/p/messagepack-st/). Old contents are still there.

Currently, we have just put a [Cypress](https://github.com/CampSmalltalk/Cypress/blob/master/README.md)-based repository for the neutral accesses from various Smalltalk dialects.



### Loading the latest development version

#### Squeak
```Smalltalk
Installer squeaksource
    project: 'MessagePack';
    install: 'ConfigurationOfMessagePack'. 
(Smalltalk at: #ConfigurationOfMessagePack) project development load
```

#### Pharo
```Smalltalk
Gofer it
    smalltalkhubUser: 'MasashiUmezawa' project: 'MessagePack';
    configuration;
    load.
(Smalltalk at: #ConfigurationOfMessagePack) project development load
```

You might need ```MpTypeMapper initializeAll ``` on new encoder/decoder-related updates.


