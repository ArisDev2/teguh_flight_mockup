import 'package:flutter/material.dart';
import 'package:teguh_flight/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/image_card.png')),
            boxShadow: [
              BoxShadow(
                  color: kPrimaryColor.withOpacity(0.5),
                  blurRadius: 50,
                  offset: Offset(0, 10))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        'Teguh ',
                        style: whiteTextStyle.copyWith(
                            fontWeight: light, fontSize: 18),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon_plane.png'))),
                    ),
                    Text(
                      'Pay',
                      style: whiteTextStyle.copyWith(
                          fontWeight: light, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 42,
            ),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
            Text(
              'IDR 200.000',
              style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 24),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text('Big Bonus',
            style: blackTextStyle.copyWith(fontSize: 30, fontWeight: semiBold)),
      );
    }

    Widget subTitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'We give you credit so that \n you can buy first flight',
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return CustomButton(
        title: 'Start Fly Now',
        margin: EdgeInsets.only(top: 50),
        width: 220,
        onPressed: () {
          Navigator.pushNamed(context, '/main');
        },
      );
    }

    return Scaffold(
        backgroundColor: kBlackgroundColor,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), subTitle(), startButton()],
        )));
  }
}
