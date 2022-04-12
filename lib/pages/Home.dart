import 'package:flutter/material.dart';
import 'package:codis_exercise/widgets/cards/ReviewCard.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final backgroundImage = "images/background.png";
  final profileImage = "images/profile.png";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(60),
              child: Center(
                child:ReviewCard(
                  backgroundImage:backgroundImage,
                  profileImage: profileImage,
                  views: '11K',
                  daysAgo: 3,
                  cardHeight: 650,
                  cardWidth: MediaQuery.of(context).size.width,
                ),
              ),
          )
      ),
    );
  }
}
