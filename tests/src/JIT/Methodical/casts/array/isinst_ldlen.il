// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

// ldlen.il
.assembly extern mscorlib { }
.assembly 'ldlen'
{
  
  
}
.namespace JitTest
{
  .class private auto ansi beforefieldinit Test
         extends [mscorlib]System.Object
  {
    .method private hidebysig static int32
            Main() cil managed
    {
      .entrypoint
      .maxstack  4
      .locals (class [mscorlib]System.Array)
      ldc.i4.6
      newarr [mscorlib]System.Int32
      isinst [mscorlib]System.Array
      stloc.0
      
      ldloc.0
      isinst	int32[]
      ldlen
      conv.i4
      ldc.i4.6
      beq.s      continue_1
      newobj     instance void [mscorlib]System.Exception::.ctor()
      throw
      
   continue_1:
      ldc.i4.6
      newarr  [mscorlib]System.Single
      isinst  [mscorlib]System.Array
      stloc.0
      
      ldloc.0
      isinst float32[]
      ldlen
      conv.i4
      ldc.i4.6
      beq.s      continue_2
      newobj     instance void [mscorlib]System.Exception::.ctor()
      throw

	continue_2:  
      ldc.i4.6
      newarr     [mscorlib]System.Double
      isinst    [mscorlib]System.Array
      stloc.0 
     
      ldloc.0
      isinst float64[]
      ldlen
      conv.i4
      ldc.i4.6
      beq.s      continue_3
      newobj     instance void [mscorlib]System.Exception::.ctor()
      throw

    continue_3:
      ldc.i4 100
      ret
    }
    .method public hidebysig specialname rtspecialname 
            instance void .ctor() cil managed
    {
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    }
  }
}
