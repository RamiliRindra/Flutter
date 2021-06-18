import 'package:flutter/material.dart';
import '../models/produit_model.dart';
import '../views/produit_card.dart';

class ProduitList extends StatelessWidget {
  final List<Produit> produits;

  const ProduitList({
    required this.produits,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        color: Colors.amber,
        child: GridView.count(
          crossAxisCount: 1,
          children:
              produits.map((produit) => ProduitCard(produit: produit)).toList(),
        ));
  }
}
