import 'package:flutter/material.dart';
import 'package:teguh_flight/shared/theme.dart';
import 'package:teguh_flight/ui/pages/choose_seat_page.dart';
import 'package:teguh_flight/ui/widgets/custom_button.dart';
import 'package:teguh_flight/ui/widgets/interests_item.dart';
import 'package:teguh_flight/ui/widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
          width: double.infinity,
          height: (MediaQuery.of(context).size.height / 2) + 10,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/image_destination1.png'))));
    }

    Widget customShadow() {
      return Container(
          width: double.infinity,
          height: 220,
          margin: EdgeInsets.only(top: 150),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                kWhiteColor.withOpacity(0),
                Colors.black.withOpacity(0.95)
              ])));
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            //NOTE EMBLEM
            Container(
              margin: EdgeInsets.only(
                  top: 35, left: defaultMargin, right: defaultMargin),
              width: 100,
              height: 20,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_emblem.png'))),
            ),
            Container(
              margin: EdgeInsets.only(top: 190, right: defaultMargin),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                              fontSize: 23, fontWeight: semiBold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Tanggerang',
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_star.png'))),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        '4.7',
                        style: whiteTextStyle.copyWith(
                            fontWeight: medium, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),

            // NOTE DESCRIPTION CONTAINER ABOUT
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              decoration: BoxDecoration(
                  color: kWhiteColor, borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'Berada di jalur jalan provinsi yang menghubungkan kota Denpasar dengan singaraja sungguh sangat mempesona Kebun Raya Eka menjadikan menghubungkan kota Denpasar dengan singaraja',
                        style:
                            blackTextStyle.copyWith(fontSize: 13, height: 1.9),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),

                  //NOTE PHOTOS:
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),

                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      PhotoItem(
                        imageUrl: 'assets/image_photo1.png',
                      ),
                      PhotoItem(
                        imageUrl: 'assets/image_photo2.png',
                      ),
                      PhotoItem(
                        imageUrl: 'assets/image_photo3.png',
                      ),
                    ],
                  ),

                  //NOTE : INTEREST
                  Text(
                    'Interests',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),

                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      IneterestItem(
                        text: 'Kids Park',
                      ),
                      IneterestItem(
                        text: 'Honor Bridge',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: [
                      IneterestItem(
                        text: 'City Museum',
                      ),
                      IneterestItem(text: 'Central Mall')
                    ],
                  )
                ],
              ),
            ),
            // NOTE : PRICE & BOOK BUTTON
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              width: double.infinity,
              child: Row(
                children: [
                  //NOTE PRICE
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 300.000',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'per orang',
                          style: greyTextStyle.copyWith(
                              fontSize: 13, fontWeight: light),
                        ),
                      ],
                    ),
                  ),
                  //NOTE BOOK BUTTON
                  CustomButton(
                    title: 'Book Now',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseSeatPage()));
                    },
                    width: 170,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBlackgroundColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [backgroundImage(), customShadow(), content()],
          ),
        ));
  }
}
