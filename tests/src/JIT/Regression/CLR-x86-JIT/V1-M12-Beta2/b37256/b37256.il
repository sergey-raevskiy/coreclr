// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0xe08350d0 {}
.class ILGEN_0xe08350d0 {
.method static float32 Method_0x4d9a(float32 Arg_0x0, int64 Arg_0x1) {
.maxstack	7

 ldc.r4 float32(0x71334631)
 conv.r8
 ldarg Arg_0x0
 conv.r8
 sub
 ldarg Arg_0x0
 ldc.r4 float32(0x19c4412c)
 ble.un Branch_0x8

 ldc.i4.1
 br Branch_0x9

 Branch_0x8:

 ldc.i4.7
 Branch_0x9:

 conv.r.un
 blt.un Branch_0x2

 ldc.i4.7
 conv.r4
 br Branch_0x3

 Branch_0x2:

 ldc.i8 0x483376ba21bb13a6
 conv.r4
 Branch_0x3:

ret
}
.method static int32 Main() {
.entrypoint
.maxstack	20
ldc.r4 float32(0xfc46528) 
ldc.i8 0x24ba7bf277693bc7 

call float32 ILGEN_0xe08350d0::Method_0x4d9a(float32 Arg_0x0, int64 Arg_0x1)
conv.i4
ldc.i4 7
sub
ldc.i4 100
add
 ret
}

}
