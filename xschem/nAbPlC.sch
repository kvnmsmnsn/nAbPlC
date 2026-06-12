v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 -320 140 -320 {
lab=vdd}
N 140 -320 140 -210 {
lab=vdd}
N 0 -320 0 -270 {
lab=vdd}
N 0 -210 0 -90 {
lab=ab_c}
N 140 -150 140 -120 {
lab=ab_c}
N 0 -120 140 -120 {
lab=ab_c}
N 0 -30 0 30 {
lab=yOut}
N 0 0 140 0 {
lab=yOut}
N 140 260 140 300 {
lab=vss}
N -260 300 140 300 {
lab=vss}
N 0 200 0 300 {
lab=vss}
N -250 -240 -40 -240 {
lab=aOp}
N -250 -180 100 -180 {
lab=bOp}
N -250 -60 -40 -60 {
lab=cOp}
N -90 -240 -90 60 {
lab=aOp}
N -90 60 -40 60 {
lab=aOp}
N -140 170 -40 170 {
lab=bOp}
N -190 230 100 230 {
lab=cOp}
N 0 90 0 140 {
lab=a_b}
N -190 -60 -190 230 {
lab=cOp}
N -140 -180 -140 170 {
lab=bOp}
N 140 0 140 200 {
lab=yOut}
N -0 -70 260 -70 {
lab=vdd}
N 260 -320 260 -70 {
lab=vdd}
N 140 -320 260 -320 {
lab=vdd}
N 140 -190 260 -190 {
lab=vdd}
N -0 -250 70 -250 {
lab=vdd}
N 70 -320 70 -250 {
lab=vdd}
N 0 50 260 50 {
lab=vss}
N 260 50 260 300 {
lab=vss}
N 140 300 260 300 {
lab=vss}
N 0 160 260 160 {
lab=vss}
N 140 220 260 220 {
lab=vss}
N 140 -0 350 -0 {
lab=yOut}
C {devices/ipin.sym} -250 -240 0 0 {name=p1 lab=aOp}
C {devices/ipin.sym} -250 -180 0 0 {name=p2 lab=bOp}
C {devices/ipin.sym} -250 -60 0 0 {name=p3 lab=cOp}
C {devices/ipin.sym} -250 -320 0 0 {name=p4 lab=vdd}
C {devices/ipin.sym} -260 300 0 0 {name=p5 lab=vss}
C {sky130_fd_pr/pfet3_01v8.sym} -20 -240 0 0 {name=M1
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 120 -180 0 0 {name=M2
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -20 -60 0 0 {name=M3
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -20 60 0 0 {name=M4
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -20 170 0 0 {name=M5
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 120 230 0 0 {name=M6
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 350 0 0 0 {name=p6 lab=yOut}
C {devices/lab_wire.sym} 10 -120 0 0 {name=p7 sig_type=std_logic lab=ab_c}
C {devices/lab_wire.sym} 0 120 0 0 {name=p8 sig_type=std_logic lab=a_b}
