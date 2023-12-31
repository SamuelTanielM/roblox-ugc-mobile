import 'package:flutter/material.dart';
import 'package:roblox_ugc/models/product_model.dart'; // Import your product model\
import 'package:roblox_ugc/widgets/left_drawer.dart';


class ProductList extends StatelessWidget {
  final List<ProductPast> productList;

  const ProductList({Key? key, required this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk'),
      ),
      drawer: LeftDrawer(productList : productList),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(100),
            1: FlexColumnWidth(),
            2: FlexColumnWidth(),
          },
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Text('Nama'),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text('Harga'),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text('Deskripsi'),
                  ),
                ),
              ],
            ),
            for (var product in productList)
              TableRow(
                children: [
                  TableCell(
                    child: Center(
                      child: Text(product.name),
                    ),
                  ),
                  TableCell(
                    child: Center(
                      child: Text('${product.price}'),
                    ),
                  ),
                  TableCell(
                    child: Center(
                      child: Text(product.description),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
