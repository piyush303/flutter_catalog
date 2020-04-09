import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'package:flutter_catalog/store/catalog_store.dart';
import 'package:flutter_catalog/screens/cart_screen.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CatalogStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog Screen'),
        actions: <Widget>[
          Observer(
            builder: (context) => Text(store.cartItems.length.toString()),
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Observer(
              builder: (context) => ListView.builder(
                shrinkWrap: true,
                itemCount: store.colors.length,
                itemBuilder: (context, index) => ListTile(
                  trailing: Wrap(
                    spacing: 20,
                    children: <Widget>[
                      Text(store.colors[index].price.toString()),
                      RaisedButton(
                        child: Text('Add'),
                        onPressed: () {
                          store.addToCard(
                            store.colors[index].colorCode,
                            store.colors[index].name,
                            store.colors[index].price,
                            index,
                          );
                        },
                      ),
                    ],
                  ),
                  leading: Container(
                    height: 50.0,
                    width: 50.0,
                    color: store.colors[index].colorCode,
                  ),
                  title: Text(store.colors[index].name),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
