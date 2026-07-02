v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -130 250 -80 250 {}
B 2 610 -250 1410 150 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ain
bin
cin"
color="7 11 12"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 610 200 1410 600 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=rslt
color=10
dataset=-1
unitx=1
logx=0
logy=0
}
N -380 -30 -380 30 {
lab=#net1}
N -380 -30 -320 -30 {
lab=#net1}
N -450 -50 -450 30 {
lab=#net2}
N -450 -50 -320 -50 {
lab=#net2}
N -520 -70 -320 -70 {
lab=cIn}
N -450 -90 -320 -90 {
lab=bIn}
N -450 -110 -450 -90 {
lab=bIn}
N -520 -110 -450 -110 {
lab=bIn}
N -380 -110 -320 -110 {
lab=aIn}
N -380 -150 -380 -110 {
lab=aIn}
N -520 -150 -380 -150 {
lab=aIn}
N -20 -110 60 -110 {
lab=yOt}
N 120 -110 250 -110 {
lab=rslt}
N 190 -110 190 -80 {
lab=rslt}
N -370 460 -370 520 {
lab=#net3}
N -370 460 -310 460 {
lab=#net3}
N -440 440 -440 520 {
lab=#net4}
N -440 440 -310 440 {
lab=#net4}
N -510 420 -310 420 {
lab=cIn}
N -440 400 -310 400 {
lab=bIn}
N -440 380 -440 400 {
lab=bIn}
N -510 380 -440 380 {
lab=bIn}
N -370 380 -310 380 {
lab=aIn}
N -370 340 -370 380 {
lab=aIn}
N -510 340 -370 340 {
lab=aIn}
N -10 380 70 380 {
lab=yOt_p}
N 130 380 260 380 {
lab=rslt_parax}
N 200 380 200 410 {
lab=rslt_parax}
C {devices/res.sym} 90 -110 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 190 -50 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} -300 90 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} -450 60 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -380 60 0 0 {name=V2 value=0 savecurrent=false}
C {devices/ipin.sym} -520 -110 0 0 {name=p2 lab=bIn
}
C {devices/gnd.sym} -450 90 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -380 90 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 190 -20 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 250 -110 2 0 {name=p5 sig_type=std_logic lab=rslt

}
C {devices/simulator_commands_shown.sym} -120 80 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* .lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
vA aIn 0 pulse 0 1.8 5n 1n 1n 400n 800n
vB bIn 0 pulse 0 1.8 5n 1n 1n 200n 400n
vC cIn 0 pulse 0 1.8 5n 1n 1n 100n 200n
.control
tran 100p 800n
write tb_nAbPlC.raw
.endc
"}
C {devices/launcher.sym} -310 270 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} 30 -110 0 0 {name=p6 sig_type=std_logic lab=yOt}
C {devices/ipin.sym} -520 -150 0 0 {name=p1 lab=aIn}
C {devices/ipin.sym} -520 -70 0 0 {name=p3 lab=cIn}
C {nAbPlC.sym} -170 -70 0 0 {name=x1}
C {devices/res.sym} 100 380 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 200 440 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -440 550 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/vsource.sym} -370 550 0 0 {name=V4 value=0 savecurrent=false}
C {devices/ipin.sym} -510 380 0 0 {name=p4 lab=bIn
}
C {devices/gnd.sym} -440 580 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -370 580 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 200 470 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 260 380 2 0 {name=p7 sig_type=std_logic lab=rslt_parax

}
C {devices/lab_wire.sym} 40 380 0 0 {name=p8 sig_type=std_logic lab=yOt_p}
C {devices/ipin.sym} -510 340 0 0 {name=p9 lab=aIn}
C {devices/ipin.sym} -510 420 0 0 {name=p10 lab=cIn}
C {nAbPlC.sym} -160 420 0 0 {name=x2
schematic=nAbPlC_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/nAbPlC.sim.spice])"
tclcommand="textwindow[ file normalize ../mag/nAbPlC.sim.spice]"
}
