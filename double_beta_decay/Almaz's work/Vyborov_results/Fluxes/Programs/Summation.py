import pandas as pd
from Parametres import *

headers = []

def Total():
    Flag = False
    Total_Data_List = []
    for Dir in os.listdir(AllFluxesDir):

        FluxesDir = os.path.join(AllFluxesDir, Dir)
        if not (os.path.isdir(FluxesDir)):
            continue

        New_FluxesFile = os.path.join(FluxesDir, 'new_' + Dir + '.csv')
        if not (os.path.isfile(New_FluxesFile)):
            continue

        headers.append(Dir)
        data = pd.read_csv(New_FluxesFile, sep=";", names=['energy', Dir])
        if Flag:
            Total_Data_List.append(data[Dir])
        else:
            Total_Data_List.append(data['energy'])
            Total_Data_List.append(data[Dir])

        Flag = True

    Total_Data = pd.DataFrame(Total_Data_List).transpose()
    Total_Data.to_csv(AllFluxesFile, sep = ';')


Total()
Total_Data = pd.read_csv(AllFluxesFile, sep=";")

e_list = Total_Data['energy']
i = 0
s_list = []

while i < len(e_list):
    s = 0
    for elem in headers:
        s += Total_Data[elem][i]
    s_list.append(s)
    i += 1
Sum_Fluxes_Data = pd.DataFrame({'energy': e_list, 'sum_spectrum': s_list})
Sum_Fluxes_Data.to_csv(SumFluxesFile, sep=';',index = False)