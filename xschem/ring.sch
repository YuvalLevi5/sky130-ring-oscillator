v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {/foss/designs/sky130-ring-oscillator/xschem/inv.sym} 0 -120 0 0 {name=x1}
C {/foss/designs/sky130-ring-oscillator/xschem/inv.sym} 0 -80 0 0 {name=x2}
C {/foss/designs/sky130-ring-oscillator/xschem/inv.sym} 0 -40 0 0 {name=x3}
C {/foss/designs/sky130-ring-oscillator/xschem/inv.sym} 0 0 0 0 {name=x4}
C {/foss/designs/sky130-ring-oscillator/xschem/inv.sym} 0 40 0 0 {name=x5}
C {lab_pin.sym} 150 -120 0 0 {name=p1 sig_type=std_logic lab=n1}
C {lab_pin.sym} 150 -80 0 0 {name=p2 sig_type=std_logic lab=n2}
C {lab_pin.sym} 150 -40 0 0 {name=p3 sig_type=std_logic lab=n3}
C {lab_pin.sym} 150 0 0 0 {name=p4 sig_type=std_logic lab=n4}
C {lab_pin.sym} 150 40 0 0 {name=p5 sig_type=std_logic lab=n5}
C {lab_pin.sym} -150 -120 0 0 {name=p6 sig_type=std_logic lab=n5}
C {lab_pin.sym} -150 -80 0 0 {name=p7 sig_type=std_logic lab=n1}
C {lab_pin.sym} -150 -40 0 0 {name=p8 sig_type=std_logic lab=n2}
C {lab_pin.sym} -150 0 0 0 {name=p9 sig_type=std_logic lab=n3}
C {lab_pin.sym} -150 40 0 0 {name=p10 sig_type=std_logic lab=n4}
C {vsource.sym} 330 -50 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} 330 -80 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {gnd.sym} 330 -20 0 0 {name=l1 lab=0}
C {code_shown.sym} 240 60 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.global vdd
.temp 27
.ic v(n1)=0
.tran 1p 5n
.meas tran period TRIG v(n1) VAL=0.9 RISE=2 TARG v(n1) VAL=0.9 RISE=3
.meas tran iavg AVG i(V1) FROM=1n TO=5n
.control
run
plot v(n1) v(n3)
.endc
"}
