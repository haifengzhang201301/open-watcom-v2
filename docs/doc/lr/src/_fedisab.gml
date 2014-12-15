.func __fedisableexcept
.synop begin
#include <fenv.h>
void __fedisableexcept( int __excepts );
.ixfunc2 'Floating Point Environment' &funcb
.synop end
.*
.desc begin
The
.id &funcb.
function disables the specified floating point exceptions.
.desc end
.*
.return begin
No value is returned.
.return end
.*
.see begin
.seelist __feenableexcept
.see end
.*
.exmp begin
#include <fenv.h>
.exmp break
void main( void )
{
    __fedisableexcept( FE_DIVBYZERO );
}
.exmp end
.class WATCOM
.system
