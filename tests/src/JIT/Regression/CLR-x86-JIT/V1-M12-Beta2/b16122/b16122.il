// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

//
//
//-----------------------------------------------------
.assembly extern legacy library mscorlib {}
.assembly 'switch'{}

.class _switch {

//-------------------------
// Entry point - Main     -
//-------------------------
.method static int32 main(class [mscorlib]System.String[]) {
.entrypoint
.maxstack	10
.locals	(int32)
//----------------
// begin testing -
//----------------
	// -- Setup
	ldc.i4	0x0
	stloc	0

ldc.i4 0x5
	ldc.i4	0x0

	TAG:
	switch (TC1,TC2,TC3)
pop
	// -- After TC3, we should fall through the
	// -- switch. The value in loc 0 should be 3
	// -- indicating that all cases were hit
	ldloc	0
	ldc.i4		0x3
	ceq
	brfalse		FAIL
	br			PASS

		TC1:
			// -- inc loc 0
			// -- we inc to prove we
			// -- made it here.
			ldloc	0
			ldc.i4		0x1
			add
			stloc	0
			
			// -- set index for _switch
			ldc.i4		0x1
			// -- go back to _switch
			br			TAG

		TC2:
			// -- inc loc 0
			// -- we inc to prove we
			// -- made it here.
			ldloc	0
			ldc.i4		0x1
			add
			stloc	0

			// -- set index for _switch
			ldc.i4		0x2
			// -- go back to _switch
			br			TAG

		TC3:
			// -- inc loc 0
			// -- we inc to prove we
			// -- made it here.
			ldloc	0
			ldc.i4		0x1
			add
			stloc	0

			// -- set index for _switch
			ldc.i4		0x3
			// -- go back to _switch
			br			TAG

	// -- We should never get here
	br	FAIL

//----------------
PASS:
	ldc.i4 100
	ret
//----------------
FAIL:
	ldc.i4.1
	ret
}
}