# Nayo Boutique

| Nama                      | NIM           | Kelas             |
|---------------------------|---------------|-------------------|
| Indah Maramin Al Inayah   | 2409116086    | Sistem Informasi C 2024 |

---

## Deskripsi Aplikasi

Aplikasi Nayo Boutique merupakan aplikasi sederhana berbasis Flutter yang dibuat untuk mengelola data produk butik. Aplikasi ini memungkinkan pengguna untuk menambahkan, mengedit, dan menghapus data produk secara dinamis.

Setiap produk memiliki informasi berupa nama produk, harga, dan stok. Data yang ditambahkan akan langsung ditampilkan pada halaman utama menggunakan konsep State Management dengan StatefulWidget dan setState().

Aplikasi ini dibuat sebagai implementasi dari materi Widget Dasar dan State Management Dasar pada mata kuliah Mobile Application Programming, dengan tujuan memahami cara kerja perubahan state dan pembaruan tampilan (UI) secara real-time.


---

## Fitur Aplikasi

<details>
<summary><b>1. Halaman Utama</b></summary>
<br>

<div align="center">
  <img width="865" alt="Halaman Utama" 
  src="https://github.com/user-attachments/assets/652f130d-84bd-46cd-b25d-03ee71be220e" />
  
  <p align="center">
  <b><em>Halaman Utama</em></b><br>
  Halaman utama menampilkan daftar produk yang telah ditambahkan oleh pengguna. 
  Jika belum ada produk yang ditambahkan, maka akan muncul pesan 
  <b>"Belum ada produk"</b> sebagai indikator bahwa data masih kosong.
  <br><br>
  Pada halaman ini juga terdapat beberapa komponen utama, yaitu:
  <br>
  - Banner aplikasi sebagai identitas visual<br>
  - Judul aplikasi di bagian atas halaman<br>
  - FloatingActionButton (+) untuk menambahkan produk baru<br>
  </p>

</div>
<br>
</details>

<details>
<summary><b>2. Menambahkan Produk Baru</b></summary>
<br>

<div align="center">
  <img width="866" height="1016" alt="Menambahkan Produk Baru" 
  src="https://github.com/user-attachments/assets/640f9234-9d1a-4496-94a7-6e4d8bc7fb13" />
  
  <p align="center">
  <b><em>Menambahkan Produk Baru</em></b><br>
  Pengguna dapat menambahkan produk baru dengan mengisi nama produk, harga, dan stok melalui halaman form.
  <br>
  </p>

</div>
<br>
</details>

<details>
<summary><b>3. Menampilkan Daftar Produk</b></summary>
<br>

<div align="center">
  <img width="942" height="1010" alt="image" 
  src="https://github.com/user-attachments/assets/0652dbc5-0c8a-439d-ab4d-449e7f188803" />

<div align="center">
  <p align="center">
  <b><em>Menampilkan Daftar Produk</em></b><br>
  Aplikasi menampilkan daftar produk dalam bentuk card. 
  Setiap card berisi informasi nama produk, harga, dan stok yang tersedia.
  Data akan muncul secara dinamis setelah produk ditambahkan.
  </p>

</div>
<br>
</details>

<details>
<summary><b>4. Empty State (Belum Ada Produk)</b></summary>
<br>

<div align="center">
  <p align="center">
  <b><em>Empty State</em></b><br>
  Jika belum ada produk yang ditambahkan, aplikasi akan menampilkan pesan 
  <b>"Belum ada produk"</b> sebagai indikator bahwa daftar masih kosong.
  </p>

</div>
<br>
</details>

<details>
<summary><b>5. Mengedit Produk</b></summary>
<br>

<div align="center">
  <p align="center">
  <b><em>Mengedit Produk</em></b><br>
  Pengguna dapat mengubah data produk yang telah ditambahkan melalui tombol edit. 
  Setelah perubahan disimpan, data pada halaman utama akan langsung diperbarui.
  </p>

</div>
<br>
</details>

<details>
<summary><b>6. Menghapus Produk dengan Konfirmasi</b></summary>
<br>

<div align="center">
  <p align="center">
  <b><em>Menghapus Produk</em></b><br>
  Pengguna dapat menghapus produk melalui tombol hapus. 
  Sebelum data dihapus secara permanen, akan muncul dialog konfirmasi 
  untuk memastikan tindakan pengguna.
  </p>

</div>
<br>
</details>

<details>
<summary><b>7. Notifikasi Aksi (SnackBar)</b></summary>
<br>

<div align="center">
  <p align="center">
  <b><em>Notifikasi Aksi</em></b><br>
  Aplikasi menampilkan notifikasi (SnackBar) setelah berhasil menambahkan 
  atau menghapus produk sebagai bentuk feedback kepada pengguna.
  </p>

</div>
<br>
</details>

<details>
<summary><b>8. State Management</b></summary>
<br>

<div align="center">
  <p align="center">
  <b><em>State Management</em></b><br>
  Aplikasi menggunakan <b>StatefulWidget</b> dan <b>setState()</b> 
  untuk mengelola perubahan data sehingga tampilan dapat diperbarui 
  secara otomatis tanpa perlu memuat ulang halaman.
  </p>

</div>
<br>
</details>

---

## 3. Widget yang Digunakan  

Berikut adalah widget yang digunakan dalam pengembangan aplikasi **Nayo Boutique** beserta fungsinya:

- **`MaterialApp`**: Digunakan sebagai root aplikasi yang menerapkan desain Material Design serta mengatur tema dan struktur dasar aplikasi.

- **`Scaffold`**: Berfungsi sebagai kerangka utama halaman yang terdiri dari AppBar, Body, dan FloatingActionButton.

- **`AppBar`**: Digunakan untuk menampilkan judul aplikasi pada bagian atas layar.

- **`Column & Row`**:  
  Column digunakan untuk menyusun widget secara vertikal, sedangkan Row digunakan untuk menyusun widget secara horizontal.

- **`Container`**: Digunakan untuk mengatur ukuran, margin, padding, serta dekorasi pada tampilan.

- **`Expanded`**: Digunakan agar ListView dapat menyesuaikan ruang yang tersedia pada layar.

- **`ListView.builder`**: Digunakan untuk menampilkan daftar produk secara dinamis berdasarkan data yang tersedia.

- **`Card`**: Digunakan untuk menampilkan informasi produk dalam bentuk kartu agar lebih terstruktur dan rapi.

- **`Text`**: Digunakan untuk menampilkan teks seperti nama produk, harga, stok, dan pesan lainnya.

- **`TextField`**: Digunakan pada halaman form untuk menerima input nama produk, harga, dan stok.

- **`ElevatedButton`**: Digunakan sebagai tombol aksi seperti tombol Simpan dan Hapus.

- **`IconButton`**: Digunakan untuk tombol edit dan hapus pada setiap produk.

- **`FloatingActionButton`**: Digunakan untuk menambahkan produk baru.

- **`AlertDialog`**: Digunakan untuk menampilkan konfirmasi sebelum menghapus produk.

- **`SnackBar`**: Digunakan untuk menampilkan notifikasi setelah berhasil menambahkan atau menghapus produk.
  
- **`Image.asset`**: Digunakan untuk menampilkan banner gambar pada halaman utama aplikasi.
