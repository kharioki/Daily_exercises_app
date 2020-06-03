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
                        .copyWith(fontWeight: FontWeight.w900),
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
                  SizedBox(
                    width: size.width * .5, // 50% of width
                    child: SearchBar(),
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: <Widget>[
                      SessionCard(
                        sessionNum: 1,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 2,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 3,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 4,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 5,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 6,
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 23,
                          spreadRadius: -13,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final Function press;

  const SessionCard({
    Key key,
    this.sessionNum,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, //provides us with available max width for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Session $sessionNum',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
