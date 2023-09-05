#

1. Flutter CLI
    a. Alat yang digunakan untuk berinteraksi dengan flutter SDk
    b. Perintah dijalankan dalam terminal

2. Important CLI Commands
    a. Flutter Doctor
        -> Perintah untuk menampilkan informasi software yang dibutuhkan flutter

    b. Flutter Create
        -> perintah untuk membuat project aplikasi flutter baru di directory tertentu

    c. Flutter Run
        -> perintah untuk menjalankan project aplikasi di device yang tersedia

    d. Flutter Emulator
        -> perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru

    e. Flutter Channel
        -> perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukkan channel yang digunakan saat ini

    f. Flutter Pub
        -> ada 2 syntax yang bisa digunakan, yaitu: 
            1. flutter pub add, untuk menambahkan packages ke depedencies yang ada di pubspec.yaml
            2. flutter pub get, tunruk mendownload semua packages atau depedencies yang ada di pubspec.yaml
             
    g. Flutter Build
        -> perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStor, dll.

    h. FLutter Clean
        -> perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator
        
        -> perintah ini akan memperkecil ukuran project tersebut


3. Packages Management
    a. flutter mendukung sharing packages
    b. packages dibuat developers lain 
    c. mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch 
    d. mendapatkan packages di website pub.dev

4. Cara menambahkan packages
    1. cari package di pub.dev
    2. copy baris depedencies yang ada di bagian installing
    3. buka pubspec.yaml
    4. paste barisnya dibawah depedencies pubspec.yaml
    5. run flutter pub get di terminal
    6. import package di file dart agar bisa digunakan 
    7. stop atau restart aplikasi jika dibutuhkan
    