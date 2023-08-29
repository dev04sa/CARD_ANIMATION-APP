import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hero_cards/view_page.dart';

import 'Modal/modal_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider.builder(
          itemCount: cards.length,
          itemBuilder: (BuildContext context, int i, _) {
            return Column(children: [
              Text(
                cards[i].cardHeader.toString(),
                style: TextStyle(
                  fontSize: 38,
                  color: cards[i].cardColor,
                ),
              ),
              Spacer(),
              Expanded(
                flex: 7,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewImage(
                                  title: cards[i].cardHeader,
                                  image: cards[i].cardImg,
                                  color: cards[i].cardColor,
                                )));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 8.0,
                    padding: EdgeInsets.all(20.0),
                    primary: cards[i].cardColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  child: Hero(
                    tag: cards[i].cardImg!,
                    child: Image.asset(
                      cards[i].cardImg!,
                      width: 250,
                    ),
                  ),
                ),
              )
            ]);
          },
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enlargeCenterPage: true,
            height: MediaQuery.of(context).size.height * 0.7,
          ),
        ),
      ),
    );
  }
}
