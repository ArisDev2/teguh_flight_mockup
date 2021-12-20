import 'package:flutter/material.dart';
import 'package:teguh_flight/shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;

  const CustomTextFormField(
      {Key? key,
      required this.title,
      this.obsecureText = false,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obsecureText,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor))),
          )
        ],
      ),
    );
  }
}
