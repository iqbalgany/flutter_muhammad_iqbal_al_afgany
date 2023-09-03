# Deep Dive Into Dart Object Oriented Programming

1. Consturctor 
    a. Method yang dijalankan saat pembuatan object
    b. Dapat menerima parameter
    c. Tidak memiliki return
    d. Nama sama dengan dengan nama class

2. Inheritance 
    a. Membuat class baru dengan memanfaatkan class yang sudah ada
    b. Bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru

3. Method Overriding
    a. Menulis ulang method yang ada pada super-class
    b. Bertujuan agar class memiliki method yang sama dengan proses yang berbeda

    -> Melakukan Overriding 
        - Dilakukan pada class yang melakukan inheritance
        - Method sudah ada pada class induk
        - Method ditulis ulanng seperti membuat method baru pada class anak
        - Ditambahkan tanda @override di baris sebelum method dibuat

4. Interface
    a. Berupa class
    b. Menunjukkan method apa saja yang ada pada suatu class
    c. Seluruh method wajib di_override
    d. Digunakan dengan menggunakan implements

     -> Melakukan Interface
        - Sekilas mirip inheritance
        - Pada class yang melakukan implements, wajib melakukan override semua method yang ada pada class induk

5. Abstract class
    a. Berupa class abstrak
    b. Menunjukkan method apa saja yang ada pada suatu class
    c. Digunakan dengan menggunakan extends
    d. Tidak dapat dibuat object
    e. Tidak semua method harus di-override

6. Polymorphism
    a. Kemampuan data berubah menjadi bentuk lain
    b. Tipe data yang dapat digunakanan adalah super class
    c. Dapat dilakukan pada class dengan extends atau implements

7. Generics 
    a. Dapat digunakan pada class atau fungsi
    b. Memberi kemampuan agar dapat menerima data dengan tipe yang berbeda
    c. Tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi

8. Enkapsulasi
    a. Ini mempromosikan penyembunyian data
    b. Peningkatan integritas data
    c. Memungkinkan perubahan pada satu bagian kode tanpa mempengaruhi bagian lain
    d. mengurangi kompleksitas dan potensi bug dalam kode

9. Modifikasi akses dalam dart
    a. Anggota Publik : kata kunci (public) memungkinkan akses dari mana saja
    b. Anggota Privat : kata kunci(_private) membatasi akses hanya dalam perpustakaan atau kelas
    c. Anggota dilindungi : dart tidak memiliki kata kunci untuk protected secara alami, tetapi secara konvensional, awalan _protected menunjukkan akses terbatas dalam perpustakaan 

10. Getter & Setter
    a. Getter & Setter adalah metode yang memungkinkan akses terkontrol ke variable privat
    b. Mereka memungkinkan enkapsulasi dengan menyediakan cara untuk membaca dan memodifikasi data privat, memastikan validasi atau perhitungan saat diperlukan



