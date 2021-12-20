import 'package:flutter/material.dart';
import 'package:teguh_flight/shared/theme.dart';
import 'package:teguh_flight/ui/pages/checkout_page.dart';
import 'package:teguh_flight/ui/widgets/custom_button.dart';
import 'package:teguh_flight/ui/widgets/seat_item.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 21, fontWeight: semiBold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 21),
        child: Row(
          children: [
            //NOTE AVAILABEL
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_available.png'))),
            ),
            Text(
              'Available',
              style: blackTextStyle.copyWith(fontSize: 13),
            ),

            //NOTE SELECTED
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_selected.png'))),
            ),
            Text(
              'Selected',
              style: blackTextStyle.copyWith(fontSize: 13),
            ),
            //NOTE UNAVAILABEL
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_unavailable.png'))),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle.copyWith(fontSize: 13),
            )
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: EdgeInsets.only(top: 2),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 19),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: kWhiteColor),
        child: Column(
          children: [
            //NOTE SEAT INDICATOR
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Text(
                        'A',
                        style: greyTextStyle.copyWith(fontSize: 15),
                      ),
                    )),
                Container(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Text(
                        'B',
                        style: greyTextStyle.copyWith(fontSize: 15),
                      ),
                    )),
                Container(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Text(
                        '',
                        style: greyTextStyle.copyWith(fontSize: 15),
                      ),
                    )),
                Container(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Text(
                        'C',
                        style: greyTextStyle.copyWith(fontSize: 15),
                      ),
                    )),
                Container(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Text(
                        'D',
                        style: greyTextStyle.copyWith(fontSize: 15),
                      ),
                    ))
              ],
            )
            //NOTE SEAT 1
            ,
            Container(
              margin: EdgeInsetsDirectional.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Text(
                        '1',
                        style: greyTextStyle.copyWith(fontSize: 15),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Text(
                        '2',
                        style: greyTextStyle.copyWith(fontSize: 15),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            //NOTE SEAT 3
            Container(
              margin: EdgeInsetsDirectional.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 1,
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Text(
                        '3',
                        style: greyTextStyle.copyWith(fontSize: 15),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ), //NOTE SEAT 3
            //NOTE SEAT 2

            //NOTE SEAT 4
            Container(
              margin: EdgeInsetsDirectional.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Text(
                        '4',
                        style: greyTextStyle.copyWith(fontSize: 15),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            //NOTE SEAT 5
            Container(
              margin: EdgeInsetsDirectional.only(top: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    child: Center(
                      child: Text(
                        '5',
                        style: greyTextStyle.copyWith(fontSize: 15),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            //Your SEAT
            Container(
              margin: EdgeInsets.only(top: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Seat',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'A3, B3',
                    style: blackTextStyle.copyWith(
                        fontWeight: medium, fontSize: 16),
                  )
                ],
              ),
            ),
            //NOTE: TOTAL
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'IDR 700.000',
                    style: purpleTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
          title: 'Continue to checkout',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CheckoutPage()));
          },
          margin: EdgeInsets.only(top: 20, bottom: 20));
    }

    return Scaffold(
        backgroundColor: kBlackgroundColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [title(), seatStatus(), selectSeat(), checkoutButton()],
        ));
  }
}
