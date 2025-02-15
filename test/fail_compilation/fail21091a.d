// https://issues.dlang.org/show_bug.cgi?id=21091

/*
TEST_OUTPUT:
----
fail_compilation/fail21091a.d(16): Error: unable to read module `Ternary`
fail_compilation/fail21091a.d(16):        Expected 'Ternary.d' or 'Ternary/package.d' in one of the following import paths:
fail_compilation/fail21091a.d(16):        [0]: `fail_compilation`
fail_compilation/fail21091a.d(16):        [1]: `$p:druntime/import$`
fail_compilation/fail21091a.d(16):        [2]: `$p:phobos$`
----
*/

struct NullAllocator
{
    import Ternary;
    Ternary owns() { }
}
