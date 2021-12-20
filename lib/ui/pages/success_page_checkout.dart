import 'package:flutter/material.dart';
import 'package:teguh_flight/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBlackgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image_success.png'))),
              ),
              Text('Well Booked',
                  style: blackTextStyle.copyWith(
                      fontSize: 32, fontWeight: semiBold)),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sre You ready to explore new\nWorld of expreience?',
                style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                textAlign: TextAlign.center,
              ),
              CustomButton(
                title: 'My Bookings',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/main', (route) => false);
                },
                width: 220,
                margin: EdgeInsets.only(top: 50),
              )
            ],
          ),
        ));
  }
}
