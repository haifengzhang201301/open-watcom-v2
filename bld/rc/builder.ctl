# Resource tools Builder Control file
# ===================================

set PROJDIR=<CWD>

[ INCLUDE <OWROOT>/build/master.ctl ]
[ LOG <LOGFNAME>.<LOGEXT> ]

cdsay .

[ INCLUDE rc/builder.ctl ]
[ INCLUDE mkcdpg/builder.ctl ]
[ INCLUDE exedmp/builder.ctl ]
[ INCLUDE restest/builder.ctl ]
[ INCLUDE wresdmp/builder.ctl ]

[ BLOCK . . ]
#============
cdsay <PROJDIR>
