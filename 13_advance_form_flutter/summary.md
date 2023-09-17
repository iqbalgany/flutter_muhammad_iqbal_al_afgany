# Advance Form Flutter

1.  Interactive Widgets 
    - Interaksi antara aplikasi dan user
    - Mengumpulkan input dan feedback dari user

2. Date Picker
    -  Widget dimana user bisa memasukkan tanggal
    - Tanggal kelahiran, Waktu pemesanan tiket, waktu reservasi restoran, jadwal meeting, dll.

> cara membuat date picker
    - menggunakan fungsi bawaan flutter showDatePicker
    - Fungsi showDatePicker memiliki tipe data future
    - Menampilkan dialog metarial design date picker
    - Menambahkan packages int di pubspec.yaml
    - Mempersiapkan variabel
    - Menambahkan fungsi showDatePicker di dalam onPressed
    - Memanggil fungsi setState di dalam onPressed

3. Color Picker
    -  Widget dimana user bisa memilih color
    - Penggunaan color picker bisa digunakan untuk berbagai macam kondisi



> Cara membuat Color Picker
    - Menggunakan packages flutter_collorpicker
    - Menambahkan packages flutter_colorpicker di pubspec.yaml
    - Mempersiapkan variable
    - menambahkan fungsi showDialog di dalam onPressed dengan return widget AltertDialog
    - import packages flutter_colorpicker dalam file dart
    - membuat kode untuk penggunaan packages flutter_colorpicker

4. File Picker
    - Kemampuan widget untuk mengakses storage
    - Memilih dan membuka file

> Cara membuat file picker
    - menggunakan packages file_picker dan open_file
    - Menambahkan packages file_picker dan open_file di pubspec.yaml
    - Import packages file_picker dan open_file dalam file dart
    - Membuat fungsi untuk mengexplore dan memilih files dari storages
    - Memanggil fungsi_pickFile di dalam onPressed
    - Membuat fungsi untuk membuka files yang telah dipilih
    - Mengambil file dari object result dan memanggil fungsi _openFile di dalam fungsi _pickFile