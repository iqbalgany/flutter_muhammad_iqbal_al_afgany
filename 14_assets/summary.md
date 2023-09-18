# Assets

1. Assets
    -> File yang di bundled dan di deployed bersamaan dengan aplikasi
    -> Tipe-tipe assets, seperti : static data (JSON Files) , icons, images, dan font file(ttf)

2. Menentukan Assets
 -> Flutter menggunakan pubspec.yaml
 -> Pubspec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi
 -> Gunakan karakter '' / '' untuk memasukkan semua assets dibawah satu directory name

3. Image
    -> Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik
    -> Flutter mendukung format gambar seperti JPEG, WebP, GIF, Animated, Web/GIF, PNG, BMP, dan WBMP
    -> Menampilkan gambar dari project asset dan internet

4. Loading Images
    -> Gunakan widget image
    -> Membutuhkan properti image dengan nilai class AssetImage()
    -> Menggunakan method image.asset, mendapatkan image yang sudah ditambahkan dalam project
    -> Menggunakan method image.network, mendapatkan data image melalui internet dengan menggunakan string url nya


5. Font
    -> Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi
    -> penentuan font yang mau dipakai biasanya oleh UI designer
    -> penerapam font menggunakan custom font dari package

5. Custom Font
cara menggunakan custom font
    1. Cari dan download font ex. https://fonts.google.com/
    2. Import file .ttf
    3. Daftarkan font di pubspec.yaml
    4. Mengatur font sebagai default
    5. Gunakan font di spesifik widget

6. Font dari package
    1. Tambahkan package google_fonts di depedencies
    2. import package di file dart
    3. gunakan font dengan memanggil GoogleFonts.namaFont()

7. Aplikasi Task Management (Continue)

