// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly 'callvirt-bug'// as "callvirt-bug.exe" 
{
  
}
.class M
{
  .method public instance void .ctor()
  {
    .maxstack 10
    ldarg.0
    call instance void [mscorlib]System.Object::.ctor()
    ret
  }

  .method public static void test(class [mscorlib]System.Object)
  {
    .maxstack 3
    ldarg.0
    callvirt instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    callvirt instance class [mscorlib]System.String [mscorlib]System.Type::ToString()
    call void [mscorlib]System.Console::WriteLine(class [mscorlib]System.String)
    ret
  }
  .method public static void test2(class M)
  {
    .maxstack 3
    ldarg.0
    callvirt instance void M::Simple()
    ret
  }
  .method instance void Simple()
  {
    ldstr "Simple"
    call void [mscorlib]System.Console::WriteLine(class [mscorlib]System.String)
    ret
  }
  

  .method public static int32 main() 
  {
    .entrypoint
    .maxstack  10
//    ldstr "My string"
//    call void M::test(class [mscorlib]System.Object)
    newobj instance void M::.ctor()
    call void M::test2(class M)
    ldc.i4 100
    ret
  }

}




