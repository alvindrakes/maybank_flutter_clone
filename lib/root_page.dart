import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maybank_flutter_clone/contants/theme_colors.dart';

import 'account_page.dart';
import 'mobile_page.dart';
import 'pay_page.dart';
import 'qr_page.dart';
import 'transfer_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

final GlobalKey<NavigatorState> firstTabNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> secondTabNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> thirdTabNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> fourthTabNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> fifthTabNavKey = GlobalKey<NavigatorState>();

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: ThemeColors.kdarkGrey.withOpacity(1.0),
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('ACCOUNTS'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            title: Text('PAY'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            title: Text('QRPAY'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            title: Text('TRANSFER'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            title: Text('MOBILE'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              navigatorKey: firstTabNavKey,
              builder: (BuildContext context) => AccountPage(),
            );
            break;
          case 1:
            return CupertinoTabView(
              navigatorKey: secondTabNavKey,
              builder: (BuildContext context) => PayPage(),
            );
            break;
          case 2:
            return CupertinoTabView(
              navigatorKey: thirdTabNavKey,
              builder: (BuildContext context) => QRpayPage(),
            );
            break;
          case 3:
            return CupertinoTabView(
              navigatorKey: fourthTabNavKey,
              builder: (BuildContext context) => TransferPage(),
            );
            break;

          default:
            return CupertinoTabView(
              navigatorKey: fifthTabNavKey,
              builder: (BuildContext context) => MobilePage(),
            );
            break;
        }
      },
    );
  }
}
