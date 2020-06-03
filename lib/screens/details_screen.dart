import 'package:flutter/material.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/search_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '3-10 Min Course',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: size.width * .6, // 60% of total width
                    child: Text(
                        'Live happier and healthier by learning the fundamentals of meditation and mindfulness.'),
                  ),
                  SearchBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
