<a name="readme-top"></a>

<br />
<div align="center">
  <a href="http://samuel-taniel-tugas.pbp.cs.ui.ac.id">
    <img src="pictures/logo_hae.png" alt="To Pokemon Shop" width="80" height="80">
  </a>

<h3 align="center">HAE Roblox UGC Store</h3>

  <p align="center">
    Aplikasi Store HAE Roblox UGC
    <br />
    <a href="https://github.com/SamuelTanielM/pokemon-shop"><strong>Explore the code »</strong></a>
    <br />
    <br />
    <a href="http://samuel-taniel-tugas.pbp.cs.ui.ac.id">View Site</a>
    ·
    <a href="https://pbp-fasilkom-ui.github.io/ganjil-2024/assignments/individual/assignment-2">View Assignment</a>
  </p>
</div>


🏪 HAE Roblox UGC Store merupakan laman dimaana pengguna bisa membeli aksesoris Roblox dan menjual aksesoris Roblox. Lamannya masih dalam tahap pengerjaan,
Tetapi Anda masih dapat menikmati aksesoris UGC Roblox yang keren! ✨
<details>
  <summary>Daftar Tugas</summary>
  <ol>
      <details>
      <summary><a href="#tugas-7">Tugas 7 | 🎴 Elemen Dasar Flutter</a></summary>
        
<hr>
<hr>
<!-- TABLE OF CONTENTS -->
<h3 align="center">Tugas 7: Elemen Dasar Flutter</h3>

<a name="tugas-7"></a>
<details>
<summary>Table of Contents</summary>
<ol>
  <li>
    <a href="#perbedaan-stateless">perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter</a>
  </li>
  <li>
    <a href="#widget-digunakan">widget yang digunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.</a>
  </li>
  <li>
    <a href="#checklist7">implementasi checklist</a>
  </li>
</ol>
</details>



<!-- ABOUT THE PROJECT -->
<a name="perbedaan-stateless"></a>
## Perbedaan Stateless dan Stateful Widget

<strong>Stateless widget:</strong>
<p>Stateless widget adalah widget yang tidak dapat berubah (immutable) setelah dibuat. Artinya, setiap kali ada perubahan pada widget tersebut, widget akan dibuat ulang sepenuhnya.
Stateless widget tidak menyimpan status (state) internal, sehingga tidak dapat mempengaruhi tampilan atau perilaku aplikasi secara langsung.
Stateless widget cocok digunakan untuk bagian tampilan yang statis atau tidak berubah, seperti gambar, teks, atau ikon.
</p>
<p><br></p>
<strong>Stateful widget:</strong>
<p></p>
<p>Stateful widget adalah widget yang dapat berubah (mutable) dan menyimpan status (state) internal.
Stateful widget memiliki kemampuan untuk memperbarui tampilan atau perilaku aplikasi ketika ada perubahan pada status internalnya.
Dalam stateful widget, status internal dapat diperbarui dengan menggunakan setState() yang akan memicu pembaruan tampilan.
Stateful widget cocok digunakan untuk bagian tampilan atau perilaku yang memerlukan interaksi pengguna, seperti formulir, tombol, atau animasi.</p>
<p><br></p>
<strong>referensi:</strong> https://rlogicaltech.medium.com/what-is-a-stateless-and-stateful-widget-in-a-flutter-5b9ef647658c

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>

<a name="widget-digunakan"></a>
### Widget pada App dan Fungsinya

MaterialApp: Widget ini digunakan untuk mengkonfigurasi dan mengatur tema dari aplikasi Flutter. Pada kode saya, widget ini digunakan untuk mengatur judul dan tema aplikasi

<a style = "Color: pink">Scaffold</a>: Sebagai kerangka dasar aplikasi, yang berisi struktur umum seperti AppBar, body, dan lain-lain.

<a style = "Color: pink">AppBar</a>: digunakan untuk menampilkan AppBar di bagian atas aplikasi dan menampilkan judul aplikasi.

<a style = "Color: pink">SingleChildScrollView</a>: pembungkus (wrapper) yang membuat konten di dalamnya untuk discroll secara vertikal. Digunakan untuk membungkus seluruh isi halaman.

<a style = "Color: pink">Padding</a>: Memberikan padding atau jarak di sekeliling konten yang ada di dalamnya.

<a style = "Color: pink">Column</a>: menampilkan children secara vertikal

<a style = "Color: pink">Text</a>: menampilkan teks. Contoh pada kode menampilkan judul "HAE UGC Catalog"

<a style = "Color: pink">GridView.count</a>: untuk menampilkan child widget secara grid dengan jumlah kolom yang ditentukan.

<a style = "Color: pink">Container</a>: wadah untuk menyimpan widget lain, contoh pada kode menyimpan Icon dan Text pada setiap card.

<a style = "Color: pink">InkWell</a>: membuat area responsif terhadap sentuhan pengguna. Contoh untuk card agar dapat di-tap.

<a style = "Color: pink">Icon</a>: menampilkan ikon

<a style = "Color: pink">SnackBar</a>: menampilkan pesan sementara (snack bar) yang muncul di bagian bawah layar.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>

<a name="checklist7"></a>
### Checklist Tugas 7
<div align="center">
<a href="http://samuel-taniel-tugas.pbp.cs.ui.ac.id">
  <img src="pictures/tugas7.png" alt="To HAE UGC Shop" width="300">
</a>
</div>

- [X] Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.

Pertama yang saya lakukan yaitu membuat flutter appnya terlebih dahulu dengan menjalankan ```flutter create Roblox_UGC```

Pada file main.dart, kita mendefinisikan MyApp yang merupakan stateless widget. Di dalam build() method, kita mengembalikan MaterialApp sebagai root dari aplikasi kita. Di dalam MaterialApp, kita memberikan judul aplikasi dan mengatur tema dengan menggunakan ColorScheme.
```
import 'package:flutter/material.dart';
import 'package:roblox_ugc/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roblox UGC Store',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 199, 201, 211)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
```

Pada file menu.dart, kita mendefinisikan MyHomePage yang juga merupakan stateless widget. Di dalam build() method, kita mengembalikan Scaffold sebagai tampilan halaman utama aplikasi.
```
  @override
    Widget build(BuildContext context) {
        return Scaffold(
          
          appBar: AppBar(
            title: const Text(
              'Roblox UGC Shop',
            ),
          ),
          body: SingleChildScrollView(
            // Widget wrapper yang dapat discroll
            child: Padding(
              padding: const EdgeInsets.all(10.0), // Set padding dari halaman
              child: Column(
                // Widget untuk menampilkan children secara vertikal
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                    child: Text(
                      'HAE UGC Catalog', // Text yang menandakan toko
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Grid layout
                  GridView.count(
                    // Container pada card kita.
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ShopItem item) {
                      // Iterasi untuk setiap item
                      return ShopCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        );
    }
```


- [X] Membuat tiga tombol sederhana dengan ikon dan teks untuk:
 > Melihat daftar item (Lihat Item)
 > Menambah item (Tambah Item)
 > Logout (Logout)

 Pertama kita buat dulu item untuk ikon dan teks tersebut, 
 ```
 final List<ShopItem> items = [
    ShopItem("Lihat Produk", Icons.checklist, Color.fromARGB(255, 91, 104, 176),),
    ShopItem("Tambah Produk", Icons.add_shopping_cart, Color.fromARGB(255, 119, 125, 158),),
    ShopItem("Logout", Icons.logout, Color.fromARGB(255, 119, 125, 158),),
  ];
  
  ```

  berdasarkan definis ShopItem dan ShopCard
  Shop Item:
  ```
  class ShopItem {
  final String name;
  final IconData icon;
  final Color warna;

  ShopItem(this.name, this.icon, this.warna);
}
```

- [X] Memunculkan Snackbar dengan tulisan:
 > "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.
 > "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.
 > "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.

dan ShopCard yaitu untuk menciptakan button yang ketika ditekan akan memunculkan SnackBar dengan showSnackBar dan menghandle jika ada snackbar lain dengan hideCurrentSnackBar(). Disini kita menggunakan padding untuk buttonnya dan isi dari button tersebut adalah icon dan teksnya, warna dari button dari ShopItem masing-masing. 

ShopCard tidak memerlukan state internal karena hanya memperlihatkan informasi yang diberikan melalui konstruktor (ShopItem item). Widget ini hanya memperlihatkan item toko dengan ikon dan teks yang diterima melalui konstruktor, dan menampilkan pesan SnackBar saat di-tap. Sehingga performanya lebih baik

```

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.warna,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```


Kemudian dimunculkan pada widget Build dengan iterasi setiap items nya pada children. 

```
children: items.map((ShopItem item) {
                      // Iterasi untuk setiap item
                      return ShopCard(item);
                    }).toList(),
```



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>
<hr>
      </details>
      <details>
      <summary><a href="#tugas-2">Tugas ? | ⭐ Tbc</a></summary>
      </details>

  </ol>
</details>