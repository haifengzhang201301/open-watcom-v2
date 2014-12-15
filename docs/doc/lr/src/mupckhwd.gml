.func _m_punpckhwd
.synop begin
#include <mmintrin.h>
__m64 _m_punpckhwd(__m64 *m1, __m64 *m2);
.synop end
.desc begin
The
.id &funcb.
function performs an interleaved unpack of the
high-order data elements of
.arg m1
and
.arg m2
.ct .li .
It ignores the low-order words.
When unpacking from a memory operand, the full 64-bit operand
is accessed from memory but only the high-order 32 bits are utilized.
By choosing
.arg m1
or
.arg m2
to be zero, an unpacking of word elements into double-word elements
is performed.
.millust begin
            m2                         m1
-------------------------  -------------------------
|  w3 |  w2 |  w1 |  w0 |  |  w3 |  w2 |  w1 |  w0 |
-------------------------  -------------------------
   |     |                     |    |
   V     V                     V    V
   w3    w1                   w2    w0

              -------------------------
              |  w3 |  w2 |  w1 |  w0 |
              -------------------------
                    result
.millust end
.desc end
.return begin
The result of the interleaved unpacking of the high-order words of two
multimedia values is returned.
.return end
.see begin
.im seemmupk
.see end
.exmp begin
#include <stdio.h>
#include <mmintrin.h>

#define AS_WORDS "%4.4x %4.4x %4.4x %4.4x"
.exmp break
__m64   a;
__m64   b = { 0x0004000300020001 };
__m64   c = { 0xff7fff800080007f };
.exmp break
void main()
  {
    a = _m_punpckhwd( b, c );
    printf( "m2="AS_WORDS" "
            "m1="AS_WORDS"\n"
            "mm="AS_WORDS"\n",
        c._16[3], c._16[2], c._16[1], c._16[0],
        b._16[3], b._16[2], b._16[1], b._16[0],
        a._16[3], a._16[2], a._16[1], a._16[0] );
  }
.exmp output
m2=ff7f ff80 0080 007f m1=0004 0003 0002 0001
mm=ff7f 0004 ff80 0003
.exmp end
.class Intel
.system
