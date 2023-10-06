# Intro REST API

1. REST API
- Representataional State Transfer Application Programming Interface
- Arsitektural yang memisahkan tampilan dengan proses bisnis
- Bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request

2. HTTP
- Protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web

3. Pola Komunikasi
- Client mengirim request
- Server mengolah dan membalas dengan memberi response

4. Struktur request 
- URL : alamat halaman yang akan diakses
- Method (GET, POST, PUT, DELETE) : Menunjukkan aksi yang diinginkan
- Header : Informasi tambahan terkait request yang dikirimkan
- Body : Data yang disertakan bersama request

4. Struktur Response
- Status Code : kode yang mewakili keseluruhan response, baik sukses maupun gagal
- Header : informasi tambahan terkait response yang diberikan
- Body : data yang disertakan bersama response

5. Dio
- Sebagai HTTP Client -> Dio -> Dimanfaatkan untuk melakukan REST API

6. Serialisasi JSON
- JSON :
    1. Cara penulisan data
    2. Javascript Object Notation
    3. Umum digunakan pada REST API

7. Mengubah struktur data ke bentuk JSON
- Map/List -> Serialisasi -> JSON

8. Deserialisasi JSON
- JSON -> deserialisasi -> Map/List