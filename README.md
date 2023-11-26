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
<!-- #TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>: TABLE OF CONTENTS -->
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
      <summary><a href="#tugas-2">Tugas 8 | ✅ Flutter Navigation, Layouts, Forms, and Input Elements</a></summary>


<hr>
<hr>
<!-- #TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>: TABLE OF CONTENTS -->
<h3 align="center">Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements</h3>   

<a name="tugas-8"></a>
<details>
<summary>Table of Contents</summary>
<ol>
  <li>
    <a href="#perbedaan-navigator">perbedaan antara Navigator.push() dan Navigator.pushReplacement() dan contoh</a>
  </li>
  <li>
    <a href="#layout-widget">layout widget pada Flutter dan konteks penggunaan</a>
  </li>
  <li>
    <a href="#elemen-form">elemen input pada form dan mengapa</a>
  </li>
  <li>
    <a href="#clean-architecture">clean architecture pada flutter</a>
  </li>
  <li>
    <a href="#checklist8">implementasi checklist</a>
  </li>
</ol>
</details>



<!-- ABOUT THE PROJECT -->
<a name="perbedaan-navigator"></a>
## Perbedaan Navigator.push() dan Navigator.pushReplacement() dan contoh

<Strong>Navigator.push() dan Navigator.pushReplacement()</Strong> adalah dua metode yang digunakan dalam Flutter untuk menavigasi antara layar atau halaman (screens) dalam aplikasi.

<Strong>Navigator.push():</Strong>
Metode ini digunakan untuk menambahkan layar baru ke tumpukan navigasi. Artinya, layar baru ditambahkan di atas layar yang sudah ada. Seperti stack.
Contoh
```
if (item.name == "Tambah Produk") {
            // NOTE: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ShopFormPage()));
            }
```

<Strong>Navigator.pushReplacement():</Strong>
Metode ini digunakan untuk menambahkan layar baru ke tumpukan navigasi dan menggantikan layar yang sudah ada dengan layar baru. Ini berguna jika Anda ingin mengganti layar saat ini dengan layar baru dan menghapus layar sebelumnya dari tumpukan.
Contoh
```
onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>

<a name="layout-widget"></a>
### layout widget pada Flutter dan konteks penggunaan

- [X] Container

widget dasar yang dapat mengandung widget lain dan menyediakan kontrol yang luas terhadap dekorasi, padding, margin, dan transformasi.

Contoh konteksnya adalah ketika kita ingin mengelilingi widget lain untuk memberikan properti padding, margin, atau dekorasi tertentu.

```
Container(
  padding: EdgeInsets.all(16.0),
  margin: EdgeInsets.symmetric(vertical: 8.0),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Text('Hello, Flutter!'),
)
```

- [X] Row dan Column

digunakan untuk mengatur widget secara horizontal (Row) atau vertikal (Column).
konteks penggunaan ketika membuat susunan widget dalam satu baris atau satu kolom.

```
Row(
  children: <Widget>[
    Icon(Icons.star),
    Text('Star'),
  ],
)
```

- [X] ListView

menyusun widget secara berurutan dalam satu arah (umumnya vertikal) dan memungkinkan scrolling.

konteks penggunaan: Menampilkan daftar item atau tampilan yang dapat di-scroll.

```
ListView(
  children: <Widget>[
    ListTile(
      leading: Icon(Icons.book),
      title: Text('Book'),
    ),
    ListTile(
      leading: Icon(Icons.music_note),
      title: Text('Music'),
    ),
  ],
)
```


- [X] GridView

menyusun widget dalam bentuk grid, memungkinkan untuk tata letak dua dimensi.
konteks penggunaan Menampilkan data dalam grid.

```
GridView.count(
  crossAxisCount: 2,
  children: <Widget>[
    // Children widgets...
  ],
)
```

- [X] Stack

Stack memungkinkan penumpukan widget, yang artinya beberapa widget dapat berada di atas widget lain.

Konteks Penggunaan: Membuat tata letak overlay atau menumpuk elemen.
```
Stack(
  children: <Widget>[
    Image.network('https://example.com/image.jpg'),
    Positioned(
      bottom: 10.0,
      right: 10.0,
      child: Text('Overlay Text'),
    ),
  ],
)
```

- [X] Expanded dan Flexible

digunakan untuk mengontrol sejauh mana widget dapat berkembang dalam parent widget yang memiliki ukuran terbatas.

Konteks Penggunaan: Membuat widget dapat memanfaatkan ruang yang tersedia.
```
Column(
  children: <Widget>[
    Text('Fixed Height'),
    Expanded(
      child: Container(
        color: Colors.blue,
      ),
    ),
  ],
)
```


- [X] SizedBox
memberikan batas atau dimensi tetap pada widget di dalamnya.

konteks penggunaan: Menentukan dimensi tetap untuk widget.
```
SizedBox(
  width: 100.0,
  height: 50.0,
  child: SomeWidget(),
)
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>
<a name="elemen-form"></a>
### elemen input pada form dan mengapa

Pada kode tugas ini diggunakan elemen input TextFormField pada form

Hal ini karena input akan digunakan untuk mengambil nama produk, harga produk, dan deskripsi dari pengguna. TextFormField juga dapat diatur sedemikian rupa dengan inputDecorationnya dan validasi yang sudah tersedia dengan menggunakan onChanged untuk menyimpan nilai input ke dalam variabel _name, _price, dan _deskripsi. Validasi dilakukan untuk memastikan input tidak kosong.

Contoh TextFormField untuk name, tinggal dikonfigurasi untuk price dan deskripsi:
```
body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Nama Produk",
                      labelText: "Nama Produk",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _name = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>
<a name="clean-architecture"></a>

### Clean architecture pada flutter

Penerapan Clean Architecture pada aplikasi Flutter melibatkan pengorganisasian kode dan struktur proyek agar menjadi lebih terpisah dan mudah diuji. Clean Architecture adalah konsep pengembangan perangkat lunak yang memisahkan komponen-komponen utama aplikasi ke dalam beberapa lapisan terpisah. Ada beberapa prinsip dan komponen utama dalam Clean Architecture, dan berikut adalah cara penerapannya dalam konteks Flutter pada tugas ini:

=== Screens
- menu.dart
- shoplist_form.dart

=== widgets
- left_drawer.dart
- shop_card.dart

= main.dart

yang menunjukkan pemisahan komponen seperti tampilan interface dan widgetsnya.

Sehingga dengan clean architecture, aplikasi akan lebih modular, mudah diuji, dan lebih mudah untuk dipelihara. Setiap bagian bertanggung jawab atas tugas tertentu, dan hubungan antar lapisan dibangun dengan cara yang menjaga arus kontrol dan ketergantungan.

reference: https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>

<a name="checklist8"></a>
### Checklist Tugas 8
<div align="center">
<a href="http://samuel-taniel-tugas.pbp.cs.ui.ac.id">
  <img src="pictures/tugas8.png" alt="gambar tugas" width="300">
</a>
</div>

- [X] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:
 - Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
 Pada kode ini dibuat objek name price dan description yang akan diappend data dari input dengan contoh pada name
```
class _ShopFormPageState extends State<ShopFormPage> {
    // ignore: no_leading_underscores_for_local_identifiers
    final _formKey = GlobalKey<FormState>();
    // ignore: no_leading_underscores_for_local_identifiers
    String _name = "";
    // ignore: no_leading_underscores_for_local_identifiers
    int _price = 0;
    // ignore: no_leading_underscores_for_local_identifiers
    String _description = "";
    
    @override
    Widget build(BuildContext context) {

        return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Form Tambah Produk',
              ),
```
 - Memiliki sebuah tombol Save.
 - Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
 - Setiap elemen input tidak boleh kosong.
 - Setiap elemen input harus berisi data dengan tipe data atribut modelnya.

Menggunakan body Form yang akan menerima _formKey sehingga form dapat divalidasi dan di reset. Selain itu juga, elemen input pada form divalidasi dengan validator jika bukan string atau kosong maka akan mengeluarkan output tertentu. Elemen input juga berisi data dengan tipe data atribut modelnya  yaitu String pada variabel dan pada form menerima String pada validator, sementara untuk price akan di parse integer dan diset ketika onChanged ke _name atau _price. Contoh pada input untuk name:
```

        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Nama Produk",
                      labelText: "Nama Produk",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _name = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),
```
 
- [X] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.

dengan menggunakan navigator push maka page akan dimasukkan dalam stack routing dengan MaterialPageRoute yang akan memunculkan tampilan shopformpage di file shoplist_form dengan import pada menu.dart.
```
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

            if (item.name == "Tambah Produk") {
            // NOTE: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ShopFormPage()));
            }
        },
```

- [X] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.

Pada elevated button berikut yaitu save button untuk menyimpan isi data formulir akan diberikan function onpressed dimana jika ditekan akan memunculkan showDialog berupa alertdialog yang isinya data data formulir yang diisi
```
Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigo),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Produk berhasil tersimpan'),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Nama: $_name'),
                                      Text('Price: $_price'),
                                      Text('Nama: $_description'),
                                      // NOTE: Munculkan value-value lainnya
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                        _formKey.currentState!.reset();
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
```

- [X] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
 Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.
 
= Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.

= Ketika memiih opsi (Tambah Item), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.

Pada drawer ini akan dimunculkan pada menu.dart
```
drawer: const LeftDrawer(),
```

yang diimport dari left_drawer.dart dan isi dari left_drawer. Pada layout widgetnya sendiri menggunakan Drawer pada drawernya dibuat isi dengan header dan yang pentingnya adalah layout widget ListTile dimana isinya merupakan cara menuju ke halaman utama dan ada untuk menuju ke shoplist form. Disini digunakan pushreplacement karena pada pop di halaman menu dan utama dikonfigurasi untuk tanpa drawer sehingga tidak bermasalah dengan drawer. Pada listtile ketika di klik akan dinavigate ke halamannya dengan navigator.pushReplacement()

```
 Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Column(
                children: [
                  Text(
                    'Shopping List',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text("Catat seluruh keperluan belanjamu di sini!",
                    // NOTE: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal, // This is the default weight, so you can omit it if you prefer.
                    ),
                  ),
                ],
              ),
            ),
          // NOTE: Bagian routing

          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              /*
              NOTE: Buatlah routing ke ShopFormPage di sini,
              setelah halaman ShopFormPage sudah dibuat.
              */
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopFormPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<hr>
<hr>
      </details>
      <details>
      <summary><a href="#tugas-2">Tugas 9 | ⭐ Integrasi Layanan Web Django dengan Aplikasi Flutter</a></summary>



<hr>
<hr>
<!-- #TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>:TODO:>>>: TABLE OF CONTENTS -->
<h3 align="center">Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter</h3>   

<a name="tugas-9"></a>
<details>
<summary>Table of Contents</summary>
<ol>
  <li>
    <a href="#pengambilan-json">pengambilan data JSON tanpa membuat model terlebih dahulu</a>
  </li>
  <li>
    <a href="#cookie-request">fungsi dari CookieRequest dan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter</a>
  </li>
  <li>
    <a href="#mekanisme-fetch">mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter</a>
  </li>
  <li>
    <a href="#mekanisme-auth">mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.</a>
  </li>
  <li>
    <a href="#widget-dipakai">widget yang kamu dipakai pada tugas ini</a>
  </li>

  <li>
    <a href="#checklist9">implementasi checklist</a>
  </li>
</ol>
</details>



<!-- ABOUT THE PROJECT -->
<a name="pengambilan-json"></a>
## pengambilan data JSON tanpa membuat model terlebih dahulu

bisa tetapi prosedur yang perlu dilakukan dalam memparsing hasil json tersebut sangatlah susah dan panjang mengakibatkan ketidakefektifan dan ketidakefesienan pengambilan data. Sehingga diciptakan model supaya parsing yang dilakukan mudah dan dapat diatur serta digunakan pada tampilan screen lainnya.

Selain hal itu juga, dapat diperhatikan ketidakamanan tipe data yang harus kita jaga tiap kali mengambil data json untuk sesuai tipe datanya. Hal ini hanya untung dalam memberikan fleksibilitas yang besar tetapi susah untuk diatur.

Apakah lebih baik tergantung dari preferensi dan spesifikasi tujuan aplikasi yang dibuat.
Misalkan jika hanya untuk menampilkan sementara dan tidak memerlukan modifikasi data lebih lanjut maka lebih baik dan sebaliknya tidak.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>

<a name="cookie-request"></a>
### fungsi dari CookieRequest dan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter

CookieRequest adalah instance yang digunakan untuk melakukan permintaan HTTP dan mengelola cookie di aplikasi Flutter. Dalam konteks Flutter, seringkali digunakan bersama dengan paket-paket seperti http untuk berkomunikasi dengan server HTTP dan menyimpan serta mengelola cookie yang diterima dari server.

Pentingnya membagikan instance CookieRequest ke semua komponen di aplikasi Flutter biasanya terkait dengan manajemen state dan konsistensi pengelolaan cookie di seluruh aplikasi. Beberapa alasan mengapa instance CookieRequest perlu dibagikan secara global meliputi:
- autentikasi, apakah pengguna sudah login atau informasi autentikasi lainnya.
- konsistensi, memastikan bahwa semua komponnen menggunakan cookie yang sama untuk menghindari konflik
- efisiensi dan kinerja, menghindari duplikasi objek dan mengurangi overhead dalam menciptakan objek
- fleksibilitas dan membuat kode lebih mudah dipahami


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>

<a name="mekanisme-fetch"></a>

### mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter

Pastikan sudah meninstall library yang diperlukan seperti http dan convert

import library tersebut pada file dart yang akan digunakan sebagai tempat fetch

```
import 'package:http/http.dart' as http;
import 'dart:convert';
```

kemudian buat permintaan get ke url data json yang ingin ditampilkan pada aplikasi secara asinkron kemudian decode JSON menggunakan jsonDecode

```
Future<List<Product>> fetchProduct() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    
    var url = Uri.parse(
        // 'https://samuel-taniel-tugas.pbp.cs.ui.ac.id/json/'
        // "http://127.0.0.1:8000/json_user/"
        "http://127.0.0.1:8000/json/"
        );
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));
```

kemudian atur data tersebut sedemikian rupa sesuai dengan yang diigninkan pada hal ini product seperti dibawah ini
```
List<Product> list_product = [];
    for (var d in data) {
        if (d != null) {
            list_product.add(Product.fromJson(d));
        }
    }
    return list_product;
```

pada build tampilannya gunakan widget FutureBuilder dan panggil fetch item. Jika data masih loading maka akan muncul loading dengan CircularProgressIndicator. Ketika sudah selesai loadignnya maka akan ditunjukkan datanya:
```
FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                    return const Column(
                        children: [
                        Text(
                            "Tidak ada data produk.",
                            style:
                                TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        ],
                    );
                } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) => GestureDetector(
                                onTap: () {
                                  // Navigate to the detail item page
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailItemPage(
                                        product: snapshot.data![index],
                                      ),
                                    ),
                                  );
                                },
                        
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                      Text(
                                      "${snapshot.data![index].fields.name}",
                                      style: const TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                      ),
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>

<a name="mekanisme-auth"></a>
### mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

dengan memanfaatkan proyek django sebelumnya kita dapat melakukan autentikasi user

pada dart untuk login gunakan
```
 final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
```

pada sebelumnya cookie dipastikan untuk permintaan post ke endpoint login django. Data usernam dan password dikirimkan sebagai bagian dari request pada bawah ini

```
final response = await request.login(
    // "https://samuel-taniel-tugas.pbp.cs.ui.ac.id/auth/login/", 
    "http://127.0.0.1:8000/auth/login/",
  {
  'username': username,
  'password': password,
  });

```
Pada views di aplikasi django akan dilakukan login juga sama seperti biasanya yang akan mereturn response json
```

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
```
Hal ini akan diproses oleh django dan memeriksa, kemudian diterima oleh app flutter. Jika berhasil request.loggedin akan menjadi true dan dinavigasikan ke MyHomePage, sebaliknya jika gagal akan muncul pesan kesalahan

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>

<a name="widget-dipakai"></a>
### widget yang kamu dipakai pada tugas ini

CircularProgressIndicator: widget yang digunakan untuk menampilkan indikator putar (spinner) yang menunjukkan bahwa aplikasi sedang melakukan operasi yang memerlukan waktu, seperti mengambil data dari server atau melakukan proses asinkron.

GestureDetector: mendeteksi berbagai gestur pengguna, seperti ketukan, sentuhan, dan sebagainya.
FutureBuilder:widget yang memungkinkan Anda membangun UI berdasarkan hasil dari sebuah Future. Ini berguna saat Anda ingin menampilkan widget yang tergantung pada data yang sedang diambil secara asinkron.
Provider: paket manajemen state yang membantu dalam menyediakan dan mengelola state di seluruh aplikasi
LoginPage:  halaman di aplikasi yang digunakan untuk proses autentikasi atau login pengguna.
InputDecoration: mengkonfigurasi penampilan dan perilaku dari elemen input seperti TextField
AlertDialog:  menampilkan dialog sederhana dengan judul dan konten. 
FloatinActionButton: tombol tindakan yang mengambang di atas antarmuka pengguna
ScaffoldMessenger:  menampilkan pesan pada Scaffold di dalam aplikasi Flutter.
Navigator: menangani navigasi antara berbagai halaman (routes) di aplikasi Flutter. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<hr>

<a name="checklist9"></a>
### Checklist Tugas 9
<div align="center">
<a href="http://samuel-taniel-tugas.pbp.cs.ui.ac.id">
  <img src="pictures/tugas8.png" alt="gambar tugas" width="300">
</a>
</div>

- [X] Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
Menggunakan actions github dan memastikan git add commit push sudah benar dan mengatasi csrf exempet pada register.

- [X] Membuat halaman login pada proyek tugas Flutter.
Dengan menginstall beberapa library yang disediakan seperti corsheaders dan menambahkannya pada requirements dengan pip freeze atau manual
kemudian membuat django app baru bernama authentication dan pastikan sudah ditambahkan rotuingnya pada isntalled apps di settings.py
tambahkan django-cors-headers pada installed apps dan corsheaders.middleware.CorsMiddleware pada settings.oy

serta menambahkan hal ini pada settings:
```
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
SECURE_CROSS_ORIGIN_OPENER_POLICY = 'None'
```

- [X] Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
Kita perlu membuat sistem autentikasi terelbih dahulu pada views.py pada folder authentication
```
from django.shortcuts import render
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
```
kemudian sambungkan routingnya pada urls.py 

```
from django.urls import path
from authentication.views import login

app_name = 'authentication'

urlpatterns = [
    path('login/', login, name='login'),
]
```

Pada flutter, kita perlu menginstall beberapa dependencies lain atau package provider dan pbp_django_auth
```
flutter pub add provider
flutter pub add pbp_django_auth
```
Kemudian modifikasi root widget untuk menggunakan CookieRequest library ke semua widgets dengan menggunakan Provider.

```
class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'Flutter App',
                theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
                    useMaterial3: true,
                ),
                home: MyHomePage()),
            ),
        );
    }
}
```

Kemudian aplikasikan login.dart yang akan mengganti MyHomePage atau halaman pertama saat memulai aplikasi
```
import 'package:shopping_list/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
    runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
const LoginApp({super.key});

@override
Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        theme: ThemeData(
            primarySwatch: Colors.blue,
    ),
    home: const LoginPage(),
    );
    }
}

class LoginPage extends StatefulWidget {
    const LoginPage({super.key});

    @override
    _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
            appBar: AppBar(
                title: const Text('Login'),
            ),
            body: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        TextField(
                            controller: _usernameController,
                            decoration: const InputDecoration(
                                labelText: 'Username',
                            ),
                        ),
                        const SizedBox(height: 12.0),
                        TextField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                                labelText: 'Password',
                            ),
                            obscureText: true,
                        ),
                        const SizedBox(height: 24.0),
                        ElevatedButton(
                            onPressed: () async {
                                String username = _usernameController.text;
                                String password = _passwordController.text;

                                // Cek kredensial
                                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                                // Untuk menyambungkan Android emulator dengan Django pada localhost,
                                // gunakan URL http://10.0.2.2/
                                final response = await request.login("http://<APP_URL_KAMU>/auth/login/", {
                                'username': username,
                                'password': password,
                                });
                    
                                if (request.loggedIn) {
                                    String message = response['message'];
                                    String uname = response['username'];
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
                                    );
                                    ScaffoldMessenger.of(context)
                                        ..hideCurrentSnackBar()
                                        ..showSnackBar(
                                            SnackBar(content: Text("$message Selamat datang, $uname.")));
                                    } else {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                            title: const Text('Login Gagal'),
                                            content:
                                                Text(response['message']),
                                            actions: [
                                                TextButton(
                                                    child: const Text('OK'),
                                                    onPressed: () {
                                                        Navigator.pop(context);
                                                    },
                                                ),
                                            ],
                                        ),
                                    );
                                }
                            },
                            child: const Text('Login'),
                        ),
                    ],
                ),
            ),
        );
    }
}
```

dan ubah MyHomePage menjadi Loginpage


- [X] Membuat model kustom sesuai dengan proyek aplikasi Django.
Hal ini dapat kita lakukan dengan menggunakan endpoint JSON `https://samuel-taniel-tugas.pbp.cs.ui.ac.id/json/` pada django dan membuka situs web Quicktype yang dimana kita akan ubah menjadi model dengan website tersebut dan pilih language dart supaya dapat disesuaikan dan paste kodingannya ke model atau file dart model yang akan digunakan.

- [X] Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.

Menggunakan package http yang sudah diinstall dan pada file `android/app/src/main/AndroidManifest.xml` ditambahkan kode  `<uses-permission android:name="android.permission.INTERNET" />` setelah application.

kemudian membuat file dart baru yang akan menampilkan daftar item pada list_product.dart.

import library yang akan digunakan.
```
mport 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:roblox_ugc/models/product.dart';
import 'package:roblox_ugc/models/product_model.dart';
import 'package:roblox_ugc/widgets/left_drawer.dart';
import 'package:roblox_ugc/screens/product_list.dart';
import 'package:roblox_ugc/screens/detail_product.dart';
```

kemudian membuat fetch data yang akan digunakan untuk mengambil data pada django dan akan ditampilkan

```
class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
Future<List<Product>> fetchProduct() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    
    var url = Uri.parse(
        // 'https://samuel-taniel-tugas.pbp.cs.ui.ac.id/json/'
        // "http://127.0.0.1:8000/json_user/"
        "http://127.0.0.1:8000/json/"
        );
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Product> list_product = [];
    for (var d in data) {
        if (d != null) {
            list_product.add(Product.fromJson(d));
        }
    }
    return list_product;
}

final List<ProductPast> productList = [];

```

- [X] Tampilkan name, amount, dan description dari masing-masing item pada halaman ini.

Pada build widgetnya panggil fetch data dan tampilkan item atau data pada halaman. pada kode dibawah digunakan futurebuilder karena penempatan data pada Future dan membuat tampilan loading jika data masih dipanggil dan sebaliknya jika tidak ada maka dimunculkan tidaak ada produk. Pada listview builder ditunjukkan data yang ketika ditekan akan ke halaman detail produk.

```
body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                    return const Column(
                        children: [
                        Text(
                            "Tidak ada data produk.",
                            style:
                                TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        ],
                    );
                } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) => GestureDetector(
                                onTap: () {
                                  // Navigate to the detail item page
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailItemPage(
                                        product: snapshot.data![index],
                                      ),
                                    ),
                                  );
                                },
                        
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                      Text(
                                      "${snapshot.data![index].fields.name}",
                                      style: const TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text("${snapshot.data![index].fields.price}"),
                                      const SizedBox(height: 10),
                                      Text(
                                          "${snapshot.data![index].fields.description}")
                                  ],
                                  ),
```


- [X] Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
 Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.
 Tampilkan seluruh atribut pada model item kamu pada halaman ini.
 Tambahkan tombol untuk kembali ke halaman daftar item.

 Ketika ditekan maka akan dipush data product yang akan memunculkan product detailnya pada build container dan menunjukkan seluruh atribut yang dipilih seperti amount description picture dll. Selain itu juga tombol back dimana akan pop navigator

 ```
 import 'package:flutter/material.dart';
import 'package:roblox_ugc/models/product.dart';

class DetailItemPage extends StatelessWidget {
  final Product product;

  const DetailItemPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Item'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Pop navigator untuk kembali ke halaman sebelumnya
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text("Price: ${product.fields.price}"),
            SizedBox(height: 10),
            Text(product.fields.description),
            SizedBox(height: 10),
            Text("Amount: ${product.fields.amount}"),
            SizedBox(height: 10),
            Text("Picture" + product.fields.picture),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}

 ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>
      </details>

  </ol>
</details>