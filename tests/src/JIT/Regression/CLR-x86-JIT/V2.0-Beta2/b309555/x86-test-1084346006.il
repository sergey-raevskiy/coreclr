// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.


.assembly extern mscorlib {}

.assembly ILGEN_0x1a02e09e {}
.class ILGEN_0x1a02e09e {

//BEGIN STATIC FIELDS

//END STATIC FIELDS
.method static int32 Method_0xa5c7a6ab() {
.maxstack	5

 .locals init (int64[] local_0x0,unsigned int64 local_0x1,float32[] local_0x2,native int[] local_0x3,int32 local_0x4,unsigned int8 local_0x5,native int local_0x6,native int local_0x7,native int local_0x8,unsigned int64[] local_0x9,unsigned int32 local_0xa,float64[] local_0xb,float64 local_0xc,unsigned int8[] local_0xd)
//BEGIN INIT LOCALS
ldc.i8 0xd10169213d144f9 
stloc local_0x1
ldc.i4 255
 newarr [mscorlib]System.Single 
 stloc local_0x2
ldc.r8 float64(0x8ec1f8e7ec3be7c1) 
stloc local_0xc
//END INIT LOCALS

 ldc.i8 0x36655e66e4da732
 ldloc local_0x1
 blt Branch_0x2
 ldloc local_0xc
 br Branch_0x3
 Branch_0x2:
 ldc.r4 float32(0x5d96a58b)
 Branch_0x3:
 ldloc local_0x2
 ldc.i4.0
 ldelema [mscorlib]System.Single
 ldind.r4
 clt.un
 ret
}
.method static int32 Main() {
.entrypoint
.maxstack	20

	call int32 ILGEN_0x1a02e09e::Method_0xa5c7a6ab()
	ldc.i4.0
	ceq
	brtrue PASS

FAIL:
	ldstr "FAIL"
	call void [mscorlib]System.Console::WriteLine(string)
	ldc.i4.0
	br DONE

PASS:
	ldstr "PASS"
	call void [mscorlib]System.Console::WriteLine(string)
	ldc.i4 100

DONE:
	

 ret
}

}
