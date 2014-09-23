eMass = 9.11*10^-31
c = 3*10^8
hbar = 1.05457173*10^-34
evToJ = 1.6012*10^-19
RcPb = 6.3
RcYBCO = 93

#radius is in cm
PbFlux(radius) = (0.0186*4*pi*((radius*10^8)^2)*0.0000039*1.38)/1000000

#Calculate the critical radius for Pb
#There's a difference in the math where I wind up with a factor 8 
#below and Hirsch winds up with a factor of 16
Rc(London) = 8*eMass*c^2*London^2/(hbar*c)

PbEnergy(radius, Rc) = (radius/Rc)*(eMass*c^2)*(1/evToJ)
specheat(temperature) = 4.18*(0.16+1.5e-4*temperature)*1000.0  
PbEnergyPlot = plot(PbEnergy(radius, 6.3), 0.1, 5.08)
PbFluxPlot = plot(PbFlux(radius), 0.1, 5.08)
show(PbEnergyPlot)
show(PbFluxPlot)

#Critical Radius for Pb
Rc(390*10^-10)

#Fluxes and energies for various sizes
#The 1.5 inch diameter sample that will easily fit in the glass dewar
PbEnergy(1.5*2.54/2, 6.3)
PbFlux(1.5*2.54/2)

#Fluxes and energies for various sizes
#The 3.8 cm sample cited in the proposal
PbEnergy(3.8, 6.3)
PbFlux(3.8)
