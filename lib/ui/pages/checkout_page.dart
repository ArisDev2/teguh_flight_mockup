import 'package:flutter/material.dart';
import 'package:teguh_flight/shared/theme.dart';
import 'package:teguh_flight/ui/pages/success_page_checkout.dart';
import 'package:teguh_flight/ui/widgets/booking_details_item.dart';
import 'package:teguh_flight/ui/widgets/custom_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);
  // ROUTE
  Widget route() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Container(
              width: 290,
              height: 65,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_checkout.png')))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CGK',
                    style: blackTextStyle.copyWith(
                        fontSize: 22, fontWeight: semiBold),
                  ),
                  Text(
                    'Tanggerang',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'TLC',
                    style: blackTextStyle.copyWith(
                        fontSize: 22, fontWeight: semiBold),
                  ),
                  Text(
                    'Kalimantan Barat',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

//BOOKING DETAIL
  Widget bookingDetail() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //NOTE DESTINATION TILE
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.only(right: 11),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image_destination1.png'))),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kalimantan Barat',
                      style: blackTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Kalimantan',
                      style: greyTextStyle.copyWith(
                          fontWeight: light, fontSize: 13),
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
                    '4.7',
                    style: blackTextStyle.copyWith(
                        fontWeight: medium, fontSize: 13),
                  )
                ],
              ),
            ],
          ),
          //NOTE: BOOKING DETAIL PAGE
          Container(
            margin: EdgeInsets.only(top: 18),
            child: Text(
              'Booking Details Item',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
          ),
          //NOTE:BOOKING DETAILS ITEM
          BookingDetailsItem(
            title: 'Traveler',
            valueText: '2 Person',
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: 'Seat',
            valueText: 'A3, B3',
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: 'Insurance',
            valueText: 'YES',
            valueColor: kGreenColor,
          ),
          BookingDetailsItem(
            title: 'Refundable',
            valueText: '2 Person',
            valueColor: kRedColor,
          ),
          BookingDetailsItem(
            title: 'VAT',
            valueText: '2 Person',
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: 'Price',
            valueText: 'IDR 8000000',
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: 'Grand Total',
            valueText: 'IDR 8500000',
            valueColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }

  Widget paymentDetails() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Details',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 60,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image_card.png'),
                      )),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 23,
                            margin: EdgeInsets.only(right: 3),
                            height: 23,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/icon_plane.png')))),
                        Text(
                          'Pay',
                          style: whiteTextStyle.copyWith(
                              fontSize: 15, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackTextStyle.copyWith(
                            fontWeight: medium, fontSize: 18),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'CURRENT BOOKING',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget tacButton() {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 30, bottom: 30),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ));
  }

  @override
  Widget build(BuildContext context) {
    //PAYMENT BUTTON
    Widget paymentButton() {
      return CustomButton(
          title: 'Pay Now',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SuccessCheckoutPage()));
          });
    }

    return Scaffold(
      backgroundColor: kBlackgroundColor,
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 24), children: [
        route(),
        bookingDetail(),
        paymentDetails(),
        paymentButton(),
        tacButton()
      ]),
    );
  }
}
