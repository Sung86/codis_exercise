import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  static const String defaultImage = "images/no-photo-available.jpg";
  final String backgroundImage;
  final String profileImage;
  final String title;
  final String views;
  final int daysAgo;
  final double cardHeight;
  final double cardWidth;

  const ReviewCard({
    Key? key,
    this.backgroundImage = defaultImage,
    this.profileImage = defaultImage,
    this.title = "Review Title",
    this.views = '0',
    this.daysAgo = 0,
    this.cardHeight = 400,
    this.cardWidth = 400,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Container(
        constraints: const BoxConstraints(maxWidth: 600),
        height: cardHeight,
        width: cardWidth,
        child: Card(
          child:  Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.asset(
                        backgroundImage,
                        fit: BoxFit.fill,
                        height: 400,
                        width: double.infinity,
                      ),
                      Positioned(
                          top: 40,
                          left: 0,
                          child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(26, 162, 81, 1),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Container(
                                width: 70,
                                height: 50,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'images/thumb_up.png',
                                  color: Colors.white,
                                ),
                              )
                          )
                      ),
                      Positioned(
                          bottom: 20,
                          right: 20,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 0, 0, 0.6),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.all(6),
                            child: const Text(
                                '2:31',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                          )
                      )
                    ],
                  ),
                  Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: 10,top:130),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title,
                              style: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "$views views • $daysAgo days ago",
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    letterSpacing: 1.5
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                ],
              ),
              Positioned(
                top:310,
                  left:20,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 190.0,
                        height: 190.0,
                        decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            image:  DecorationImage(
                                fit: BoxFit.fill,
                                image:  AssetImage(profileImage)
                            )
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
        )
    );
  }
}
