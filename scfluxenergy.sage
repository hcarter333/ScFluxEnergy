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
GenericFlux(radius, n_s, lambda_L, rho_neg) = (n_s*4*pi*((radius*10^8)^2)*lambda_L*rho_neg)/1000000


PbEnergy(radius, Rc) = (radius/Rc)*(eMass*c^2)*(1/evToJ)
specheat(temperature) = 4.18*(0.16+1.5e-4*temperature)*1000.0  
PbEnergyPlot = plot(PbEnergy(radius, 6.3), 0.1, 5.08)
PbFluxPlot = plot(PbFlux(radius), 0.1, 5.08, color='red')
show(PbEnergyPlot)
show(PbFluxPlot)

#Critical Radius for Pb in meters
Rc(390*10^-10)
8*eMass*c^2*(390*10^-10)^2/(hbar*c)

#Critical Radius for Hg in meters
Rc(410*10^-10)
8*eMass*c^2*(410*10^-10)^2/(hbar*c)
#Flux from Hg of critical radius
GenericFlux(3.5, .0168, 410e-8, 0.99)
#Critical diameter in inches
3.5*2/2.54

#Fluxes and energies for various sizes
#The 1.5 inch diameter sample that will easily fit in the glass dewar
PbEnergy(1.5*2.54/2, 6.3)
PbFlux(1.5*2.54/2)

#Fluxes and energies for various sizes
#The 3.8 cm sample cited in the proposal
PbEnergy(3.8, 6.3)
PbFlux(3.8)

#Calculate the energy for YBCO
PbEnergy(0.7, 93)
#for Pb n_s = 0.0186
#for Pb lambda_L = 390e-8
#for Pb rho_neg = 1.38, this fixes a transpose in the Ann. Phys. article
#This checks for agreement with the Pb result
GenericFlux(3.8, .0186, 390e-8, 1.38)

#Predicted energy and Flux for the YBCO sample
PbEnergy(0.79, 93)
GenericFlux(0.79, .0013, 1500e-8, 0.62)

#Predicted solid angle through x 123sdd detector
area = .5*.5
#radius = 1
TotalFlux = 301
N(radius) = TotalFlux*area/(4*pi*radius^2)

N(1)
N(0.5)

