import os

AllFluxesDir = '/Users/a1/Desktop/NeutrinoSpectrum/Fluxes'
AllFluxesFile = os.path.join(AllFluxesDir, 'AllFluxes.csv')
SumFluxesFile = os.path.join(AllFluxesDir, 'SumFluxes.csv')
SumFluxesGraph = os.path.join(AllFluxesDir, 'SumFluxes.png')
Test_File = os.path.join(AllFluxesDir, 'B/B.csv')

step = 0.01
min_energy = 0
max_energy = 20

Norms = {'BS05_AGS_OP': {'pp': 6.058e10, 'pep': 1.453e8, 'hep': 8.254e3,
'Be1': 4.338e9, 'Be2': 4.338e9, 'B': 4.508e6, 'N': 2.007e8, 'O':1.445e8,
'F': 3.254e6},

'B16_AGSS09': {'pp': 6.03e10, 'pep': 1.46e8, 'hep': 8.25e3,
'Be1': 4.50e9, 'Be2': 4.50e9, 'B': 4.50e6, 'N': 2.04e8, 'O':1.44e8,
'F': 3.26e6}}

CurModel = 'BS05_AGS_OP'