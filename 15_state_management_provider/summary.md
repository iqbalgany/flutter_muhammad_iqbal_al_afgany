# State management Provider

1. State
- data yang dapat dibaca saat pembuatan widget
- Dapat berubah saat widget sedang aktif
- Hanya dimiliki oleh StatefulWidget

2. Memanfaatkan state
- dibuat sebagai property dari class
- digunakan pada widget saat build

3. Global State
- State biasa yang dapat digunakan pada seluruh widget

4. Alasan penggunaan global state
- agar antara widget dapat memanfaatkan state yang sama dengan mudah

5. Provider
- State management
- Perlu di-install agar dapat digunakan

6. Membuat State Provider
- buat file berdama contact.dart
- definisikan state dalam bentuk class

7. Mendaftarkan state provider
- import dalam file main.dart
- daftarkan pada runApp dengan MultiProvider

8. Menggunakan state dari provider
- simpan provider dalam variable
- ambil data dari provider melalui getter
