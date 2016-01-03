catalog
catalogKeyClassesAndExample

	^ 
'- ==MpMessagePack== is a facade class for encoding and decoding.
- You can also use ==MpEncoder== and, ==MpDecoder== respectively.

Serialization:
[[[ 
MpMessagePack pack: <your object>
]]]
or 
[[[ 
<your object> messagePacked
]]]

Deserialization:
[[[
MpMessagePack unpack: msgpackBytes
]]]
or
[[[
Object fromMessagePack: msgBytes
]]]

Sample1:
[[[
map := Dictionary new.
map at: ''someArray'' asByteArray put: #(1 2.2 #[3 4 5]).
packed := map messagePacked.
(Object fromMessagePack: packed) inspect.
]]]
Sample2:
[[[
writeStream := WriteStream on: ByteArray new.
encoder := MpEncoder on: writeStream.
encoder nextPut: 1.
encoder nextPut: #(2 3).
dic := Dictionary new.
dic at: 4 put: 5.
encoder nextPut: dic.
encoder nextPut: ''four'' asByteArray.
bytes := encoder contents.

readStream := ReadStream on: bytes.
decoder := MpDecoder on: readStream.
[decoder atEnd] whileFalse: [
    Transcript cr; show: decoder next printString
]
]]]

'