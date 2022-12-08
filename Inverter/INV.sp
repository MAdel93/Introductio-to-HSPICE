

.include 'D:\lerning\Guilan University\VLSI\Exercise\inv 180\mosistsmc180.lib'

VDD vdd gnd 1.8
VA1 2 gnd PULSE 1.8 0 .1NS 100PS 100PS .5NS 1NS
MIP vdd 2 3 vdd PMOS L=.18u W=.72u 
MIN 3 2 gnd gnd NMOS L=.18u W=.18u
C1 3 gnd 10f

.probe v(*) i(*)
.PRINT Pp=PAR('V(vdd,3)*I(mip)')
.PRINT PN=PAR('V(3)*I(min)')
.PRINT IC=PAR('I(mip)-I(min)')
.PRINT PC=PAR('IC*V(3)')
.PRINT Pvdd=PAR('I(mip)*V(vdd)')
.PRINT EC=integ('Pc')
.PRINT Evdd=integ('Pvdd')

.options post=2 nomod 
.op 
.TRAN 1ps 1ns * transient analysis: Step end_time 
.end