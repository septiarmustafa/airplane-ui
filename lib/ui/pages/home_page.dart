import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,),
      );
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,\nKezia Anne',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6,),
                Text(
                  'Where to Fly Today?',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/profile.png',
                ),
              ),
            ),
          ),
        ],
      );
    }

  Widget popularDestination(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
              name: 'Lake Ciliwung',
              city: 'Tangerang',
              imageUrl: 'assets/destination1.png',
              rating: 4.8,
            ), 
            DestinationCard(
              name: 'White House',
              city: 'Spain',
              imageUrl: 'assets/destination2.png',
              rating: 4.7,
            ), 
            DestinationCard(
              name: 'Lake Ciliwung',
              city: 'Monaco',
              imageUrl: 'assets/destination3.png',
              rating: 4.8,
            ), 
            DestinationCard(
              name: 'Lake Ciliwung',
              city: 'Japan',
              imageUrl: 'assets/destination4.png',
              rating: 5.0,
            ), 
            DestinationCard(
              name: 'Lake Ciliwung',
              city: 'Singapore',
              imageUrl: 'assets/destination5.png',
              rating: 4.9,
            ), 
          ],
        ),
      ),
    );
  }

  Widget newDestination(){
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
        bottom: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          DestinationTile(
            name: 'Danau Beratan',
            city: 'Singaraja',
            imageUrl: 'assets/destination6.png',
            rating: 4.5,
          ),
          DestinationTile(
            name: 'Sidney Opera',
            city: 'Singapura',
            imageUrl: 'assets/destination7.png',
            rating: 4.7,
          ),
          DestinationTile(
            name: 'Roma',
            city: 'Italia',
            imageUrl: 'assets/destination8.png',
            rating: 4.8,
          ),
          DestinationTile(
            name: 'Payung Teduh',
            city: 'Singapura',
            imageUrl: 'assets/destination9.png',
            rating: 4.6,
          ),DestinationTile(
            name: 'Hill Hey',
            city: 'Monaco',
            imageUrl: 'assets/destination10.png',
            rating: 4.9,
          ),
        ],
      ),
    );
  }

    return ListView(
      children : [
       header(),
       popularDestination(),
       newDestination(),
      ], 
    );
  }
}