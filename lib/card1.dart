import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  //1
  final String category = 'Espetáculo dos Paulistas';
  final String title = 'São Paulo, Brasil';
  final String description = 'Morumbi';
  final String tourist = 'Estádio Cícero Pompeu de Toledo';
  //2
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            //1
            padding: const EdgeInsets.all(16),
            //2
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            //3
            decoration: const BoxDecoration(
              //4
              image: DecorationImage(
                //5
                image: NetworkImage(
                    'https://pbs.twimg.com/media/Fp2upYmWIAkXRDp?format=jpg&name=large'),
                //6
                fit: BoxFit.cover,
              ),
              //7
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Stack(
              children: [
                //8
                Text(
                  category,
                  style: GpsdoMundoTheme.darkTextTheme.bodyText1,
                ),
                //9
                Positioned(
                  top: 20,
                  child: Text(title,
                      style: GpsdoMundoTheme.darkTextTheme.headline2),
                ),
                //10
                Positioned(
                  bottom: 30,
                  right: 0,
                  child: Text(
                    description,
                    style: GpsdoMundoTheme.darkTextTheme.bodyText1,
                  ),
                ),
                //11
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Text(
                    tourist,
                    style: GpsdoMundoTheme.darkTextTheme.bodyText1,
                  ),
                )
              ],
            )));
  }
}
