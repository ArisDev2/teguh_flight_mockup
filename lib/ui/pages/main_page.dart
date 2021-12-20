import 'package:flutter/material.dart';
import 'package:teguh_flight/ui/widgets/custom_bottom_navigation_item.dart';
import '../../shared/theme.dart';
import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(
                bottom: 5, left: defaultMargin, right: defaultMargin),
            decoration: BoxDecoration(
                color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_home.png',
                  isSelected: true,
                ),
                CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_booking.png',
                ),
                CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_card.png',
                ),
                CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_settings.png',
                )
              ],
            ),
          ));
    }

    return Scaffold(
        backgroundColor: kBlackgroundColor,
        body: Stack(
          children: [buildContent(), customBottomNavigation()],
        ));
  }
}
