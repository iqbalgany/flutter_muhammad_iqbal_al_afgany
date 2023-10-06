# MVVm Architecture

1. MVVM => Model, View, View-Model
- Memisahkan logic dengan tampilan (view) ke dalam ViewModel

2. Keuntungan 
- Reusability 
    Jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama
- Maintainability
    Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic
- Testability
    Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian 

3. Melakukan MVVM
- Struktur Direktori 
    1. Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut 
    2. Tiap screen diletakkan dalam sebuah direktori yang didalamnya terdapat view dan ViewModel

4. Model 
- Bentuk data yang akan digunakan dibuat dalam bentuk class
- data-data yang dimuat, diletakkan pada property

5. ViewModel
- Menyimpan data-data dan logic yang diperlukan halaman ContactScreen
- Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga

6. Mendaftarkan ViewModel
- Menggunakan MUltiProvider agar dapat menggunakan banyak ViewModel
- MaterialApp sebagai child utama

7. View
- Menggunakan StatefulWidget
    > Menampilkan Data di View
        - Letakkan pada bagian build
        - Menggunakan getters yang ada pada ViewModel
        - Data dapat langsung ditampilkan pada widgets
        



 