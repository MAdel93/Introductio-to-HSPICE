

.include 'mosistsmc180.lib'

*-------------------------------------------------------
VDD vdd gnd 1.8
VA1 A gnd PULSE 5 0 .1NS 10PS 10PS 4NS 8NS
VA2 B gnd PULSE 5 0 .1NS 10PS 10PS 2NS 4NS
VA3 C gnd PULSE 5 0 .1NS 10PS 10PS 1NS 2NS
*------------------------------------Cout-----------------
MIPC1 vdd A 3 vdd PMOS L=.18u W=.72u 
MIPC2 vdd B 3 vdd PMOS L=.18u W=.72u 
MIPC3 3 B 4 vdd PMOS L=.18u W=.72u 
MIPC4 4 A 5 vdd PMOS L=.18u W=.72u
MIPC5 3 C 5 vdd PMOS L=.18u W=.72u 

MINC1 5 A 6 gnd NMOS L=.18u W=.18u
MINC2 6 B gnd gnd NMOS L=.18u W=.18u
MINC3 5 C 7 gnd NMOS L=.18u W=.18u
MINC4 7 A gnd gnd NMOS L=.18u W=.18u
MINC5 7 B gnd gnd NMOS L=.18u W=.18u

MIPC6 vdd cout 8 vdd PMOS L=.18u W=.72u 
MINC6 8 cout gnd gnd NMOS L=.18u W=.18u
C1 8 cout 10f

*---------------------------------------SUM----------------
MIPS1 vdd A 9 vdd PMOS L=.18u W=.72u 
MIPS2 vdd B 9 vdd PMOS L=.18u W=.72u 
MIPS3 vdd C 9 vdd PMOS L=.18u W=.72u 
MIPS4 9 cout 12 vdd PMOS L=.18u W=.72u
MIPS5 9 A 10 vdd PMOS L=.18u W=.72u 
MIPS6 10 B 11 vdd PMOS L=.18u W=.72u 
MIPS7 11 C 12 vdd PMOS L=.18u W=.72u

MINS1 12 A 13 gnd NMOS L=.18u W=.18u
MINS2 13 B 14 gnd NMOS L=.18u W=.18u
MINS3 14 C gnd gnd NMOS L=.18u W=.18u
MINS4 12 cout 15 gnd NMOS L=.18u W=.18u
MINS5 15 A gnd gnd NMOS L=.18u W=.18u
MINS6 15 B gnd gnd NMOS L=.18u W=.18u
MINS7 15 C gnd gnd NMOS L=.18u W=.18u

MIPC8 vdd sum 16 vdd PMOS L=.18u W=.72u 
MINC8 16 sum gnd gnd NMOS L=.18u W=.18u
*-------------------------------------------------------TRAN--------------------------------------------
.options post=2 nomod 
.op 
.TRAN 1ps 8ns * transient analysis: Step end_time 
.end
