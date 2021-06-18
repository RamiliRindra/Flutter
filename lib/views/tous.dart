import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:massin/database/database.dart';
import 'package:massin/widget/produit_list.dart';
import '../models/produit_model.dart';
import '../views/produit_card.dart';

class Tous extends StatefulWidget {
  const Tous({Key? key}) : super(key: key);

  @override
  _TousState createState() => _TousState();
}

class _TousState extends State<Tous> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('assets/images/homepage-banner.jpeg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('assets/images/chaosbane.jpeg'),
                      fit: BoxFit.cover),
                ),
              ),
            ],
            options: CarouselOptions(
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(milliseconds: 400),
              autoPlayCurve: Curves.ease,
              aspectRatio: 16 / 9,
              height: 180,
            ),
          ),
        ],
      ),
    );
  }
}
