class Produit {
  //int id;
  String nom;
  String desc;
  String image;
  int ref;
  int prix;
  int stock;
  bool promo;

  Produit({
    required this.nom,
    required this.desc,
    required this.prix,
    required this.stock,
    required this.promo,
    required this.image,
    required this.ref,
  });
}
