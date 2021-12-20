import 'package:flutter/material.dart';
import 'package:teguh_flight/ui/pages/detail_page.dart';
import '../../shared/theme.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  const DestinationTile(
      {Key? key,
      required this.name,
      required this.city,
      required this.imageUrl,
      this.rating = 3.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 7),
        padding: EdgeInsets.all(9),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.only(right: 11),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(imageUrl))),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    city,
                    style:
                        greyTextStyle.copyWith(fontWeight: light, fontSize: 13),
                  ),
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
                  rating.toString(),
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 13),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
