# Flutter Form

1. Form
    - menerima isian data dari pengguna
    - isian data dapat lebih dari satu

    -> Membuat form
    - menggunakan statefulwidget
    - keadaan form disimpan menggunakan GlobalKey<FormState>

2. Input   
    a. TextField
        - menerima isian data dari pengguna
        - isian data dapat lebih dari satu
    -> membuat TextField
        - data diambil menggunakan TextEditingController
        - isian data berupa teks
    
    b. Radio
        - memberi opsi pada pengguna
        - hanya dapat memilih satu opsi
    -> membuat radio
        -data diambil menggunakan property dengan tipe data sesuai value pada radio
    
    c. CheckBox
        - memberi opsi pada pengguna
        - dapat memilih beberapa opsi
    -> membuat checkbox
        - data diambil menggunakan property bertipe bool

    d. Dropdown Button
        - memberi opsi pada pengguna
        - hanya dapat memilih satu opsi
        - opsi tidak ditampilkan di awal, hanya tampil jika ditekan
    -> membuat dropdown button
        - data diambil menggunakan property dengan tipe data sesuai value pada dropdownmenuitem
    
    e. Button
        - bersifat seperti tombol
        - dapat melakukan sesuatu saat ditekan 
    
    f. ElevatedButton
        - tombol yang timbul
        - jika ditekan, akan menjalankan onPressed
    
    g. IconButton
        - tombol yang hanya menampilkan icon
        - jika ditekan, akan menjalankan onPressed
        