@echo off
cls
echo ==============================
Echo SELAMAT DATANG DI PROGRAM SAYA
echo ==============================
echo ANDA DIWAJIBKAN UNTUK
echo MEMBUAT ACCOUNT DULU
echo ============================== 
:su 
set /p u1=buat username anda  :
set /p y1=buat password anda  :
echo ==============================
pause 
goto login

:login
cls
echo ==============================
Echo SELAMAT DATANG DI PROGRAM SAYA
echo ==============================
echo Masukkan Account Anda.
set /p u2=USERNAME  :
set /p y2=PASSWORD  :
echo ==============================

if %y2%==%y1% (
        goto menu
    )

cls
:aw1
cls
echo Username atau Password salah silahkan ulangi kembali...
echo [0] untuk membuat account ulang
echo [1] untuk log in ulang
set /p ko=:  
if %ko%==0 cls goto su 
if %ko%==1 goto login (       
) else (
    goto aw1
)

:menu
cls
echo =============///\\\=================
echo ====================================
echo HALO SELAMAT DATANG %u1% SILAHKAN..
echo Pilih menu :
echo [1.] Internet
echo [2.] Office
echo [3.] Cerdas Cermat
echo [4.] Program Kalkulator sederhana
echo [5.] Kartu Tanda Mahasiswa
echo [6.] Turn off PC
echo ====================================
echo =============\\\///=================

set /p menu_choice=Masukkan pilihan Anda:


REM Pemilihan menu
if "%menu_choice%"=="1" (
    call :mbrowsing
) else if "%menu_choice%"=="2" (
    call :moffice
) else if "%menu_choice%"=="3" (
    call :mccm
) else if "%menu_choice%"=="4" (
    call :mkkl
) else if "%menu_choice%"=="5" (
    call:ktm_siswa
) else if "%menu_choice%"=="6" (
    call:mmati
) else (
    echo Pilihan tidak valid. Silakan coba lagi.
    pause
    goto menu
)

rem ==================================INTERNET========================================
:mbrowsing
cls
echo pilih lah salah satu
echo ==============================
echo [1] you tube
echo [2] email
echo [3] Searching
echo [88] Kembali ke Menu
echo ==============================

set /p p1=tentukan pilihan anda...
if %p1% == 1 goto youtube
if %p1% == 2 goto email
if %p1% == 3 goto browsing
if %p1% == 88 goto menu (    
) else (
    echo Pilihan anda salah!!
    set /p io=ENTER...!!!!
    goto mbrowsing
)

goto mbrowsing

:youtube
cls
start www.youtube.com
pause
goto mbrowsing
:email
cls
start www.gmail.com
pause
goto mbrowsing
:browsing 
cls 
start www.google.com
pause 
goto mbrowsing
rem ================================batas==========================================

rem =================================office=========================================
:moffice
cls
echo pilih lah salah satu
echo ==============================
echo [1] Office Word
echo [2] Office Excel
echo [3] Power Point
echo [88] Kembali ke Menu
echo ==============================

set /p p2=tentukan pilihan anda...
if %p2% == 1 goto word
if %p2% == 2 goto excel
if %p2% == 3 goto ppt
if %p2% == 88 goto menu (    
) else (
    echo Pilihan anda salah!!
    set /p io=ENTER...!!!!
    goto moffice
)
:word
cls
"C:\Program Files\Microsoft Office 15\root\office15\WINWORD.EXE"
pause
goto moffice
:excel
cls
"C:\Program Files\Microsoft Office 15\root\office15\EXCEL.EXE"
pause
goto moffice
:ppt
cls
"C:\Program Files\Microsoft Office 15\root\office15\POWERPNT.EXE"
pause
goto moffice
rem =================================office=========================================

rem =================================CCm========================================
:mccm
cls
echo =====================///\\\==========================
echo.
echo DI BACA TERLEBIH DAHULU DENGAN CERMAT SEBELUM MENJAWAB
echo SISWA DI HARAP MENJAWAB MENGGUNAKAN HURUF
echo A/B/C/D or a/b/c/d , LALU TEKAN ENTER...!!
echo.
echo =====================///\\\==========================
pause
goto soal1

:soal1
cls
echo 1. kapan tahun indonesia merdeka?
echo    [A] 1955    [C] 1945
echo    [B] 1845    [D] 1954
set /p h1=Jawaban anda adalah?
if %h1%==c (   
    Echo SELAMAT JAWABAN ANDA BENAR..!!!
    set n1=10
    pause 
    goto soal2
)
if %h1%==C (   
    Echo SELAMAT JAWABAN ANDA BENAR..!!!
    set n1=10
    pause 
    goto soal2
) else (
    echo MAAF JAWABAN ANDA SALAH...!!
    set n1=10
    pause
    goto soal2
)

:soal2
cls
echo 2. indonesia merayakan kemerdekaan pada tanggal?
echo     [A] 18 agustus      [C] 12 juli
echo     [B] 17 september    [D] 17 agustus
set /p h2=Jawaban anda adalah?
if %h2%==d  (
    Echo SELAMAT JAWABAN ANDA BENAR..!!!
    set n2=10
    pause 
    goto soal3
)
if %h2%==D  (
    Echo SELAMAT JAWABAN ANDA BENAR..!!!
    set n2=10
    pause 
    goto soal3
) else (
    echo MAAF JAWABAN ANDA SALAH...!!
    set n2=0
    pause
    goto soal3
)

:soal3
cls
echo 3. berapa hasil 87*4:2?
echo     [A] 174    [C] 887
echo     [B] 217    [D] 105
set /p h3=Jawaban anda adalah?
if %h3%==a  (
    Echo SELAMAT JAWABAN ANDA BENAR..!!!
    set n3=10
    pause 
    goto hn1
)
if %h3%==A  (
    Echo SELAMAT JAWABAN ANDA BENAR..!!!
    set n3=10
    pause 
    goto hn1
) else (
    echo MAAF JAWABAN ANDA SALAH...!!
    set n3=0
    pause
    goto hn1
)
:hn1
cls
echo =============///\\\=================
echo ====================================
echo TERIMA KASIH TELAH MENJAWAB MENGERJAKAN
echo SOAL SOAL CERDAS CERMAT.
echo ====================================
set /a hnn1= %n1%+%n2%+%n3%
echo HASIL NIALAI ANDA  : %hnn1%
echo ====================================
echo =============\\\///=================
set /p jt= Enter untuk ke Menu
goto menu
rem =================================CCm========================================

rem =================================kkl========================================
:mkkl
cls
echo Ini adalah bentuk sederhana dari kalkulator
set /p x=Masukkan angka pertama  : 
set /p y=Masukkan angka ke dua   : 
set /p n=Pilih salah satu jenis(+,-,*,/)(tambah,kurang,kali,bagi)
set /a xy= %x%%n%%y%
echo -------------
echo %x%%n%%y%=%xy%
echo -------------
echo -------------
echo [1] kembali menggunakan kalkulator
echo [88] kembali ke menu 
echo -------------
set /p hu= pilihan anda..?
if %hu%==1 goto mkkl
if %hu%==88 goto menu
rem =================================kkl========================================

rem =================================ktm========================================
:ktm_siswa
cls
echo =============///\\\=================
echo ====================================
set /p inktm=MASUKKAN NIM ANDA  :

if %inktm%==20122068 goto ktm1
if %inktm%==20122077 goto ktm2
if %inktm%==20122078 goto ktm3
if %inktm%==20122055 goto ktm4
if %inktm%==20122075 goto ktm5
if %inktm%==20122070 goto ktm6
if %inktm%==20122062 goto ktm7
if %inktm%==20122080 goto ktm8
if %inktm%==20122065 goto ktm9
if %inktm%==20122076 goto ktm10
if %inktm%==20112066 goto ktm11 (
) else (
    Nim yang anda masukkan SALAH...!!!
    pause
    goto ktm_siswa
)
:ktm1
cls
echo =====================================
echo Nama lengkap   : Muhammad Fasholadin
echo Nim            : 20122068
echo Kelas          : TI 2 B
echo Prodi          : Teknik Informatika
echo =====================================
pause
goto menu
:ktm2
cls
echo =====================================
echo Nama lengkap   : Sandy Kusuma Ardi 
echo Nim            : 20122077
echo Kelas          : TI 2 B
echo Prodi          : Teknik Informatika
echo =====================================
pause
goto menu
:ktm3
cls
echo =====================================
echo Nama lengkap   : Siswo Harjo
echo Nim            : 20122078
echo Kelas          : TI 2 B
echo Prodi          : Teknik Informatika
echo =====================================
pause
goto menu
:ktm4
cls
echo =====================================
echo Nama lengkap   : Ahmad Toni
echo Nim            : 20122055
echo Kelas          : TI 2 B
echo Prodi          : Teknik Informatika
echo =====================================
pause
goto menu
:ktm5
cls
echo =====================================
echo Nama lengkap   : RIZKHIKA AINA FITRI 
echo Nim            : 20122075
echo Kelas          : TI 2 B
echo Prodi          : Teknik Informatika
echo =====================================
pause
goto menu
:ktm6
cls
echo =====================================
echo Nama lengkap   : Nesia Destiana
echo Nim            : 20122070
echo Kelas          : TI 2 B
echo Prodi          : Teknik Informatika
echo =====================================
pause
goto menu
:ktm7
cls
echo =====================================
echo Nama lengkap   : Joseph Hadi
echo Nim            : 20122062
echo Kelas          : TI 2 B
echo Prodi          : Teknik Informatika
echo =====================================
pause
goto menu
:ktm8
cls
echo =====================================
echo Nama lengkap   : Yulfia Asriningtyas
echo Nim            : 20122080
echo Kelas          : TI 2 B
echo Prodi          : Teknik Informatika
echo =====================================
pause
goto menu
:ktm9
cls
echo =====================================
echo Nama lengkap   : Melinda Putri Pramesti
echo Nim            : 20122065
echo Kelas          : TI 2 B
echo Prodi          : Teknik Informatika
echo =====================================
pause
goto menu
:ktm10
cls
echo =====================================
echo Nama lengkap   : Salma Nabila 
echo Nim            : 20122076
echo Kelas          : TI 2 B
echo Prodi          : Teknik Informatika
echo =====================================
pause
goto menu
:ktm11
cls
echo =====================================
echo Nama lengkap   : Muhammad Aldi gifarliy 
echo Nim            : 20112066
echo Kelas          : TI 2 B
echo Prodi          : Teknik Informatika
echo =====================================
pause
goto menu
rem =================================ktm========================================

rem =================================turn off========================================
:mmati
cls
echo Pilih menu:
echo [1]. Shutdown
echo [2]. Restart
echo [88]. Back to Menu 
echo.

set /p hy=Masukkan pilihan Anda: 

REM Pemilihan menu
if %hy%==1 goto st
if %hy%==2 goto restart
if %hy%==88 goto menu (
) else (
    echo Pilihan tidak valid. Silakan coba lagi.
    pause
    goto mmati
)

REM  untuk melakukan shutdown
:st
cls
echo Menjalankan perintah shutdown...
shutdown /s /t 0
goto mmati

REM  untuk melakukan restart
:restart
cls
echo Menjalankan perintah restart...
shutdown /r /t 0
goto mmati
