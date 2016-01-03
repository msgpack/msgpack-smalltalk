## How to install

### Squeak:

You can use Installer:
```
Installer squeaksource
    project: 'MetacelloRepository';
    install: 'ConfigurationOfMessagePack'. 
(Smalltalk at: #ConfigurationOfMessagePack) perform: #load.
```
### Pharo:
You can use Gofer:
```
Gofer it
      url: 'http://smalltalkhub.com/mc/MasashiUmezawa/MessagePack/main';
      package: 'ConfigurationOfMessagePack';
      load.
(Smalltalk at: #ConfigurationOfMessagePack) perform: #load.
```
### VisualWorks:

Hosted on [Public Store Repository](http://www.cincomsmalltalk.com/CincomSmalltalkWiki/PostgreSQL+Access+Page).
http://www.cincomsmalltalk.com/publicRepository/MessagePack-All(Bundle).html

You can also download parcels:
http://code.google.com/p/messagepack-st/source/browse/#hg%2FVisualWorks

### VA Smalltalk:

Hosted on [VAStGoodies.com](http://vastgoodies.com).

Core: [MessagePack](http://vastgoodies.com/maps/MessagePack).
Tests: [MessagePackTests](http://vastgoodies.com/maps/MessagePack%20Tests).

You can also download .dat files:
http://code.google.com/p/messagepack-st/source/browse/#hg%2FVA%20Smalltalk

### Dolphin Smalltalk:

Hosted on [Google Code site](<http://messagepack-st.googlecode.com>) (old version).

Zipped: [MessagePack-Dolphin.zip](http://messagepack-st.googlecode.com/hg/Dolphin%20Smalltalk/MessagePack-Dolphin.zip).
Sources: [MessagePack](http://code.google.com/p/messagepack-st/source/browse/#hg%2FDolphin%20Smalltalk%2FMessagePack).

Download the zipped pac file: MessagePack-Dolphin.zip and follow the instruction on README file.