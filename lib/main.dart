import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_catalog/screens/catalog_screen.dart';
import 'package:flutter_catalog/store/catalog_store.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<CatalogStore>(
      create: (context) => CatalogStore(),
      child: MaterialApp(
        title: 'Flutter MobX Catalog ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CatalogScreen(),
      ),
    );
  }
}

