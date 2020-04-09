import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'package:flutter_catalog/store/catalog_store.dart';

class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CatalogStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('cart'),
      ),
      body: Observer(
        builder: (context) => Column(
          children: <Widget>[
            ListView.builder(
              shrinkWrap: true,
              itemCount: store.cartItems.length,
              itemBuilder: (context, index) => ListTile(
                leading: Container(
                  height: 50.0,
                  width: 50.0,
                  color: store.cartItems[index].colorCode,
                ),
                title: Text("${store.cartItems[index].name}"),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    store.delete(index);
                  },
                ),
              ),
            ),
            Observer(
              builder: (context) => Text("Total Price ${store.cartTotal.toString()}", style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            FlatButton(
              child: Text('Clear Cart'),
              onPressed: () {
                store.clear();
              },
            )
          ],
        ),
      ),
    );
  }
}
