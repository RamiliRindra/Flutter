import 'package:flutter/material.dart';
import 'tous.dart';
import 'package:massin/database/database.dart';
import 'package:massin/widget/produit_list.dart';
import '../models/produit_model.dart';
import '../views/produit_card.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boutique',
      theme: ThemeData(
        fontFamily: 'HelveticaNeueLTCom',
        primaryColor: Colors.blue[900],
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text(
              'Jeux Vidéos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 3,
                  children: produits
                      .map((produit) => ProduitCard(produit: produit))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
