// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly b08797
{
}
.class ILGEN_941279580 {
.method static int32 main() {
.entrypoint
.maxstack	11
.locals ( int64)

 ldc.i8 0x7
 stloc 0

 ldloc 0
 conv.r4
 conv.i4
 ldloc 0
 conv.u
 conv.u8
 ldc.i8 0x2
 and
 conv.u4
 and
 ldc.i4 0x2
 sub

ldc.i4 100
add
 ret
}
}