// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0xcdff6a8e {}
.class ILGEN_0xcdff6a8e {

.method static int32 Method_0x1e5a(){
.maxstack	17

 .locals (int32 local_0x2,int32 local_0x4)

ldc.i4 0x31641618 
stloc local_0x2
ldc.i4 0x3776414 
stloc local_0x4

Start_Orphan_1:
 ldloca local_0x4
 ldc.i4.4
 conv.ovf.i4
 stind.i4
End_Orphan_1:

Start_Orphan_0:
 ldc.i4.m1
 conv.ovf.i8.un
 ldloc local_0x4
 conv.ovf.i8.un
 mul
 conv.u2
 newarr [mscorlib]System.SByte
 pop
End_Orphan_0:
 ldc.i4 44
ret
}
.method static int32 Main() {
.entrypoint
.maxstack	20

call int32 ILGEN_0xcdff6a8e::Method_0x1e5a()
ldc.i4 44
sub
ldc.i4 100
add
ret
}

}
