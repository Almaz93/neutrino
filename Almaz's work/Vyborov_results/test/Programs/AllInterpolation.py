from Interpolation import Interpolation
from Parametres import *


for Dir in os.listdir(AllFluxesDir):
    FluxesDir = os.path.join(AllFluxesDir, Dir)
    if not (os.path.isdir(FluxesDir)):
        continue

    FluxesFile = os.path.join(FluxesDir, Dir + '.csv')
    if not (os.path.isfile(FluxesFile)):
        continue

    Interpolation(FluxesFile)