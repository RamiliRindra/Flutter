import 'package:flutter/material.dart';
import 'package:massin/views/produit_details.dart';
import '../models/produit_model.dart';
import 'package:intl/intl.dart';

class ProduitCard extends StatelessWidget {
  final Produit produit;

  const ProduitCard({
    required this.produit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Material(
        child: InkWell(
          splashColor: Colors.lightBlue[200],
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProduitDetail(produit)));
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  produit.image,
                  height: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      produit.nom,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      NumberFormat.decimalPattern().format(produit.prix) +
                          ' Ar',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
