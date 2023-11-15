import 'package:flutter/material.dart';
import 'package:roblox_ugc/widgets/left_drawer.dart';
import 'package:roblox_ugc/screens/shoplist_form.dart';
import 'package:roblox_ugc/widgets/shop_card.dart';
import 'package:roblox_ugc/screens/product_list.dart';
import 'package:roblox_ugc/models/product_model.dart'; // Import your product model\

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopItem> items = [
    ShopItem("Lihat Produk", Icons.checklist, Color.fromARGB(255, 91, 104, 176),),
    ShopItem("Tambah Produk", Icons.add_shopping_cart, Color.fromARGB(255, 119, 125, 158),),
    ShopItem("Logout", Icons.logout, Color.fromARGB(255, 119, 125, 158),),
  ];

  final List<Product> productList = [];



  

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
    Widget build(BuildContext context) {
        return Scaffold(
          
          appBar: AppBar(
            title: const Text(
              'Shopping List',
            ),
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
          ),
          // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
          drawer: LeftDrawer(productList : productList),
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
                      return ShopCard(item, productList: productList,);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        );
    }
}
class ShopItem {
  final String name;
  final IconData icon;
  final Color warna;

  ShopItem(this.name, this.icon, this.warna);
}


class ShopCard extends StatelessWidget {
  final ShopItem item;
  final List<Product> productList;

  const ShopCard(this.item, {super.key, required this.productList}); // Constructor

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

            if (item.name == "Tambah Produk") {
            // NOTE: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShopFormPage(productList: productList)));
            }

            if (item.name == "Lihat Produk") {
            // NOTE: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductList(productList: productList),));
          }
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