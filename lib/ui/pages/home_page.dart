import 'package:flutter/material.dart';
import 'package:teguh_flight/shared/theme.dart';
import 'package:teguh_flight/ui/widgets/destination_card.dart';
import 'package:teguh_flight/ui/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, top: 12, right: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, \nTeguh Harits\nWhere to fly today?',
                    style: blackTextStyle.copyWith(
                        fontSize: 19, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'How to fly today?',
                    style:
                        greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/image_profile.png'))),
              child: Row(children: []),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, top: 12),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                title: 'Lake Ciliwung',
                city: 'Jakarta',
                imageUrl: 'assets/image_destination1.png',
                rating: 4.9,
              ),
              DestinationCard(
                title: 'White House',
                city: 'United State',
                imageUrl: 'assets/image_destination2.png',
                rating: 4.7,
              ),
              DestinationCard(
                title: 'Lake Ciliwung',
                city: 'Bali',
                imageUrl: 'assets/image_destination3.png',
                rating: 4.8,
              ),
              DestinationCard(
                title: 'Lake Ciliwung',
                city: 'Japan',
                imageUrl: 'assets/image_destination4.png',
                rating: 5.0,
              ),
              DestinationCard(
                title: 'Lake Ciliwung',
                city: 'Singapure',
                imageUrl: 'assets/image_destination5.png',
                rating: 4.5,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
            top: 5, left: defaultMargin, right: defaultMargin, bottom: 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Singaraja, Bali',
              imageUrl: 'assets/image_destination6.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Sidney Opera',
              city: 'Sidney, Australia',
              imageUrl: 'assets/image_destination7.png',
              rating: 4.7,
            ),
            DestinationTile(
              name: 'Roma',
              city: 'Roma, italia',
              imageUrl: 'assets/image_destination8.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Hilly hey',
              city: 'Monaco, 4.7',
              imageUrl: 'assets/image_destination9.png',
              rating: 4.5,
            )
          ],
        ),
      );
    }

    return ListView(
      children: [header(), popularDestinations(), newDestinations()],
    );
  }
}
