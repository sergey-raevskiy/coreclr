// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly b05639
{
}
.class _simple {

.method static int32 main(class System.String[]) {
.entrypoint
.maxstack	100

 ldc.i8 0x20c67fc874f64b52
 ldc.i4.M1
 ldc.i4.M1
 clt.un
 conv.u8
 sub
 ldc.i8 1
 ldc.i8 6
 mul
 cgt
ldc.i4 1
sub

ldc.i4 100
add
ret
}
}