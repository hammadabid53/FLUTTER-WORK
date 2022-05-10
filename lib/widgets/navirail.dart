import 'package:eut_app/global/constants.dart';
import 'package:eut_app/screens/dashboard/dashboardpages.dart/overview.dart';
import 'package:flutter/material.dart';

//THIS IS NAVIGATION RAIL WIDGET CREATED BY HAMMAD DATE 4-23-2022
class Navirail extends StatefulWidget {
  const Navirail({Key? key}) : super(key: key);

  @override
  _NavirailState createState() => _NavirailState();
}

class _NavirailState extends State<Navirail> {
  int index = 0;
  bool isExtended = false;

  final selectedColor = Colors.white;
  final unselectedColor = Colors.white60;
  final labelStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Row(
          children: [
            NavigationRail(
              backgroundColor: darkGrey,
              labelType: NavigationRailLabelType.none,
              selectedIndex: index,
              extended: isExtended,
              selectedLabelTextStyle: labelStyle.copyWith(color: selectedColor),
              unselectedLabelTextStyle:
                  labelStyle.copyWith(color: unselectedColor),
              selectedIconTheme: IconThemeData(color: selectedColor, size: 50),
              unselectedIconTheme:
                  IconThemeData(color: unselectedColor, size: 50),
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              trailing: isExtended
                  ? InkWell(
                      onTap: () => setState(() => isExtended = !isExtended),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 2),
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.logout,
                              color: whitecolor,
                              size: 25,
                            ),
                            SizedBox(width: 25),
                            Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: whitecolor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : InkWell(
                      onTap: () => setState(() => isExtended = !isExtended),
                      child: const Icon(
                        Icons.login,
                        color: whitecolor,
                        size: 30,
                      ),
                    ),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(
                    Icons.home,
                    color: whitecolor,
                    size: 30,
                  ),
                  selectedIcon: Icon(
                    Icons.home,
                    color: whitecolor,
                    size: 30,
                  ),
                  label: Text(
                    'Overview',
                    style: TextStyle(
                      color: whitecolor,
                    ),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.account_box,
                    color: whitecolor,
                    size: 30,
                  ),
                  selectedIcon: Icon(
                    Icons.account_box,
                    color: whitecolor,
                    size: 30,
                  ),
                  label: Text(
                    'Account',
                    style: TextStyle(
                      color: whitecolor,
                    ),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.transfer_within_a_station,
                    color: whitecolor,
                    size: 30,
                  ),
                  selectedIcon: Icon(
                    Icons.transfer_within_a_station,
                    color: whitecolor,
                    size: 30,
                  ),
                  label: Text(
                    'Transfer',
                    style: TextStyle(
                      color: whitecolor,
                    ),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.design_services,
                    color: whitecolor,
                    size: 30,
                  ),
                  selectedIcon: Icon(
                    Icons.design_services,
                    color: whitecolor,
                    size: 30,
                  ),
                  label: Text(
                    'Service',
                    style: TextStyle(
                      color: whitecolor,
                    ),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.settings,
                    color: whitecolor,
                    size: 30,
                  ),
                  selectedIcon: Icon(
                    Icons.settings,
                    color: whitecolor,
                    size: 30,
                  ),
                  label: Text(
                    'Setting',
                    style: TextStyle(
                      color: whitecolor,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: buildPages()),
          ],
        ),
      );

  Widget buildPages() {
    switch (index) {
      case 0:
        return const Overview();
      case 1:
      // return FavouritesPage();
      case 2:
      //  return ProfilePage();
      case 3:
      // return SettingsPage();
      default:
        return const Overview();
    }
  }
}
