#project UAS Algoritma Pemograman
import os


pake_1=(f"Paket 1 : (Mobil Avanza, Tahun 2015) Rp.500.000/hari")
pake_2=(f"Paket 2 : (Mobil Innova, Tahun 2019) Rp.700.000/hari")
pake_3=(f"Paket 3 : (Mobil Pajero, Tahun 2020) Rp.1.000.000/hari")
pake_4=(f"Paket 4 : (Mobil Alphard, Tahun 2021) Rp.1.100.000/hari\n")

if __name__ == "__main__":
    sistem_operasi = os.name
    
    while(True):
        match sistem_operasi:
            case "nt": os.system("cls")
        
        print(50*'-')
        print("SELAMAT DATANG DI SIPCAR RENTAL")
        print("DI BAWAH ADALAH MENU-MENU UNTUK MELAKUKAN BOOKING")
        print(50*'-')   

        print(pake_1)
        print(pake_2)
        print(pake_3)
        print(pake_4)



        paket = input("TENTUKAN PILIHAN ANDA...  ")       
        print("\n====================================================\n")

        match paket:
            case "1": print(pake_1)
            case "2": print(pake_2)
            case "3": print(pake_3)
            case "4": print(pake_4)

        print("\n====================================================\n")
        is_done = input("APAKAH SUDAH MANTAB!? : (y/n)? ")
        if is_done == "y" or is_done == "Y":
            break

if(paket=='1'): 
    tpaket=(f"Avanza",2015,500000)
elif(paket=='2'):
    tpaket=(f"Innova",2019,700000)
elif(paket=='3'):
    tpaket=(f"Pajero",2020,1000000)
elif(paket=='4'):
    tpaket=(f"Alphard",2021,1100000)
else :
    tpaket=(f"")



hari=int(input("Berapa hari anda akan menyewa?  : "))
totalpay=(tpaket[2])*hari
match sistem_operasi:
    case "nt": os.system("cls")

print("\n---------------------------")
print("SIPCAR RENTAL MOBIL TERBAIK")
print("        INVOICE ANDA")
print("---------------------------\n")
print("")
print("")
print("Merek Mobil          :%s"%(tpaket[0]))
print("Tahun Produksi Mobil :%d"%(tpaket[1]))
print("Harga Sewa perHari   :%d"%(tpaket[2]))
print("Jumlah hari sewa     :",hari)
print("Total Harga          :",totalpay)
print("")
print("\n---------------------------")

next_=input("SILAHKAN LAKUKAN PEMBAYARAN\nTEKAN ENTER UNTUK KELUAR PROGRAM...")
match sistem_operasi:
    case "nt": os.system("cls")


