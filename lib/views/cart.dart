import 'package:flutter/material.dart';
import 'package:massin/models/produit_model.dart';

class Cart extends StatefulWidget {
  final List<Produit> _cart;
  Cart(this._cart);

  @override
  _CartState createState() => _CartState(this._cart);
}

class _CartState extends State<Cart> {
  _CartState(this._cart);
  List<Produit> _cart;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panier'),
      ),
      body: ListView.builder(
          itemCount: _cart.length,
          itemBuilder: (context, index) {
            var item = _cart[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Card(
                child: ListTile(
                  title: Text(item.nom),
                  trailing: GestureDetector(
                    child: Icon(
                      Icons.remove_circle,
                      color: Colors.blue,
                    ),
                    onTap: () {
                      setState(() {
                        _cart.remove(item);
                      });
                    },
                  ),
                ),
              ),
            );
          }),
    );
  }
}
