import pandas as pd
from Parametres import *


def Interpolation(FluxesFile):
    data = pd.read_csv(FluxesFile, sep=";",names=['energy','spectrum'])
    x = data['energy']
    y = data['spectrum']

    Norm = Norms[CurModel][os.path.basename(FluxesFile)[:-4]]

    new_x = []
    new_y = []

    e = min_energy
    i = 0
    xlen = x.__len__()

    while e <= max_energy:
        if (e < x[0]) or (e > x[xlen-1]):
            s = 0
        else:
            while x[i+1] < e:
                i += 1
            s = (y[i] + (e - x[i]) / (x[i+1] - x[i]) * (y[i+1] - y[i])) * Norm
        new_x.append(e)
        new_y.append(s)
        e += step

    new_data = pd.DataFrame(new_y,new_x)
    FluxesDir = os.path.dirname(FluxesFile)

    NewBaseName = 'new_' + os.path.basename(FluxesFile)

    NewFluxesFile = os.path.join(FluxesDir,NewBaseName)
    new_data.to_csv(NewFluxesFile,sep=';',header=False)

if __name__== '__main__':
    Interpolation(Test_File)