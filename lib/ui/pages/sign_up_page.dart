import 'package:flutter/material.dart';
import 'package:teguh_flight/ui/widgets/custom_button.dart';
import 'package:teguh_flight/ui/widgets/custom_text_form_field.dart';

import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get/nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      //   Widget nameInput() {
      //     return Container(
      //       margin: EdgeInsets.only(bottom: 20),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Text('Full Name'),
      //           SizedBox(
      //             height: 6,
      //           ),
      //           TextFormField(
      //             cursorColor: kBlackColor,
      //             decoration: InputDecoration(
      //                 hintText: 'Your fullname',
      //                 border: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(defaultRadius)),
      //                 focusedBorder: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(defaultRadius),
      //                     borderSide: BorderSide(color: kPrimaryColor))),
      //           )
      //         ],
      //       ),
      //     );
      //   }

      Widget nameInput() {
        return CustomTextFormField(
          title: 'Fullname',
          hintText: 'your fullname',
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'your email addresss',
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'your password',
          obsecureText: true,
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'your hobby',
        );
      }

      Widget getSubmitButton() {
        return CustomButton(
          title: 'Register',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            getSubmitButton()
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 50, bottom: 73),
          child: Text(
            'Terms and Conditions',
            style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ));
    }

    return Scaffold(
        backgroundColor: kBlackgroundColor,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [title(), inputSection(), tacButton()],
          ),
        ));
  }
}
