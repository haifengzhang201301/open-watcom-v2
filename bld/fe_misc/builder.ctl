# FEMISC Builder Control file
# ===========================

set PROJDIR=<CWD>
set PROJNAME=femisc

[ INCLUDE <OWROOT>/build/master.ctl ]
[ LOG <LOGFNAME>.<LOGEXT> ]

[ INCLUDE <OWROOT>/build/defrule.ctl ]

[ BLOCK <BINTOOL> build ]
#========================
    cdsay <PROJDIR>
    <CPCMD> <OWOBJDIR>/optencod.exe  <OWBINDIR>/optencod<CMDEXT>
    <CPCMD> <OWOBJDIR>/msgencod.exe  <OWBINDIR>/msgencod<CMDEXT>
    <CPCMD> <OWOBJDIR>/findhash.exe  <OWBINDIR>/findhash<CMDEXT>

[ BLOCK <BINTOOL> clean ]
#========================
    echo rm -f <OWBINDIR>/optencod<CMDEXT>
    rm -f <OWBINDIR>/optencod<CMDEXT>
    echo rm -f <OWBINDIR>/msgencod<CMDEXT>
    rm -f <OWBINDIR>/msgencod<CMDEXT>
    echo rm -f <OWBINDIR>/findhash<CMDEXT>
    rm -f <OWBINDIR>/findhash<CMDEXT>

[ BLOCK <1> rel cprel ]
#======================
    # Currently not built by default

[ BLOCK . . ]
#============
cdsay <PROJDIR>
