import 'package:flutter/material.dart';
import 'package:massin/views/cart.dart';
import 'package:massin/views/home.dart';

import '../models/produit_model.dart';

List<Produit> _produits = [];
List<Produit> _cartList = [];

class ProduitDetail extends StatelessWidget {
  final Produit produit;

  ProduitDetail(
    this.produit,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(produit.nom),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cart(_cartList)));
              },
              icon: Icon(Icons.shopping_bag))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            produit.image,
            height: 100,
            fit: BoxFit.cover,
          ),
          Text(produit.desc),
          GestureDetector(
            child: Text('ajouter'),
            onTap: () {
              if (_cartList.isNotEmpty)
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Cart(_cartList),
                  ),
                );
            },
          )
        ],
      ),
    );
  }
}
