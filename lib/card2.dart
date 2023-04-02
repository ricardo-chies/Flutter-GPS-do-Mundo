import 'package:flutter/material.dart';
import 'author_card.dart';
import 'gpsdomundo_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        //1
        child: Container(
      constraints: const BoxConstraints.expand(
        width: 350,
        height: 450,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://pbs.twimg.com/media/FsQ_rT5XgAAM9qX?format=jpg&name=small'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      //2
      child: Column(children: [
        const AuthorCard(
          authorName: 'Casimiro Miguel',
          title: 'Jornalista',
          imageProvider: NetworkImage(
              'https://pbs.twimg.com/profile_images/1484473740209659906/NlQOxAt3_400x400.jpg'),
        ),
        Expanded(
          //2
          child: Stack(
            children: [
              //3
              Positioned(
                bottom: 16,
                right: 16,
                child: Text(
                  'Maracanã',
                  style: GpsdoMundoTheme.lightTextTheme.headline1,
                ),
              ),
              //4
              Positioned(
                bottom: 70,
                left: 16,
                child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Casa do Inesquecível',
                      style: GpsdoMundoTheme.lightTextTheme.headline1,
                    )),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
