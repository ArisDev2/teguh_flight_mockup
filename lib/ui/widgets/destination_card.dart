import 'package:flutter/material.dart';
import 'package:teguh_flight/shared/theme.dart';
import 'package:teguh_flight/ui/pages/detail_page.dart';

class DestinationCard extends StatelessWidget {
  final String title;
  final String city;
  final String imageUrl;
  final double rating;
  const DestinationCard(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.city,
      this.rating = 3.5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        width: 155,
        height: 270,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: 136,
            height: 180,
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(image: AssetImage(imageUrl))),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 55,
                height: 30,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(18))),
                child: Row(
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
                      rating.toString(),
                      style: blackTextStyle.copyWith(
                          fontWeight: medium, fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                      fontSize: 15, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  city,
                  style:
                      greyTextStyle.copyWith(fontWeight: medium, fontSize: 13),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
