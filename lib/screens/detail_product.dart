import 'package:flutter/material.dart';
import 'package:roblox_ugc/models/product.dart';
import 'package:roblox_ugc/models/product_model.dart';
import 'package:roblox_ugc/screens/product_list.dart';
import 'package:roblox_ugc/widgets/left_drawer.dart';

class DetailItemPage extends StatelessWidget {
  final Product product;

  DetailItemPage({Key? key, required this.product}) : super(key: key);

  final List<ProductPast> productList = [];

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
      drawer: LeftDrawer(productList : productList),
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
