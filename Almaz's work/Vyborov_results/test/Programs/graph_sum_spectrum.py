import matplotlib.pyplot as pp
import pandas as pd
from Parametres import *

data = pd.read_csv(SumFluxesFile,sep=";")
x = data['energy']
y = data['sum_spectrum']

fig = pp.figure()
a = fig.add_subplot(111)
a.set_xscale('log')
a.set_yscale('log')
a.grid(True)
a.set_xlabel('energy, MeV')
a.set_ylabel('spectral neutrino fluxes, cm-2 s-1 MeV')
a.set_title('sum_spectrum')
a.plot(x,y,'c')
pp.savefig(SumFluxesGraph)
pp.show()
