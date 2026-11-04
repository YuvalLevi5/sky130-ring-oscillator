v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -30 20 30 {lab=out}
N 20 0 100 0 {lab=out}
N 20 -90 20 -60 {lab=vdd}
N 20 -130 20 -90 {lab=vdd}
N 20 60 20 90 {lab=GND}
N 20 90 20 130 {lab=GND}
N -60 -60 -20 -60 {lab=in}
N -60 60 -20 60 {lab=in}
N -60 -60 -60 60 {lab=in}
N -140 0 -60 0 {lab=in}
C {sky130_fd_pr/pfet_01v8.sym} 0 -60 0 0 {name=M1
W=2.5
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 0 60 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 20 -130 3 0 {name=p1 sig_type=std_logic lab=vdd}
C {gnd.sym} 20 130 0 0 {name=l1 lab=GND}
C {ipin.sym} -140 0 0 0 {name=p3 lab=in}
C {opin.sym} 100 0 0 0 {name=p2 lab=out}
