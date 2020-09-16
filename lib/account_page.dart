import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:maybank_flutter_clone/contants/theme_colors.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              _UpperRow(),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.3,
                      color: Colors.grey,
                    ),
                  ),
                ),
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 30, right: 30),
                child: Container(
                  width: Get.width,
                  height: 90,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  children: [
                    _SavingAccountRow(),
                    _MaeRow(),
                  ],
                ),
              )
            ],
          ),
          _CustomNavigationBar(),
        ],
      ),
    );
  }
}

class _UpperRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("assets/images/malaysia_map.jpg"),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            width: Get.width,
            height: 260.0,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
                child: Text(
              'RM 100,000',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            )),
          ),
        ),
      ],
    );
  }
}

class _CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: kToolbarHeight,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.line_style),
            GestureDetector(
              onTap: () {}, //TODO add bottom sheet when tap
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Accounts",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_open,
                  size: 14,
                  color: Colors.white,
                ),
                Text(
                  "Log out",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _SavingAccountRow extends StatelessWidget {
  const _SavingAccountRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableScrollActionPane(),
      actionExtentRatio: 0.20,
      secondaryActions: [
        IconSlideAction(
          caption: 'PAY',
          color: ThemeColors.kdarkGrey,
          icon: Icons.more_horiz,

          // onTap: () => _showSnackBar('More'),
        ),
        IconSlideAction(
          caption: 'TRANSFER',
          color: ThemeColors.kdarkGrey,
          icon: Icons.delete,
          //onTap: () => _showSnackBar('Delete'),
        ),
        IconSlideAction(
          caption: 'MOBILE',
          color: ThemeColors.kdarkGrey,
          icon: Icons.delete,
          //onTap: () => _showSnackBar('Delete'),
        ),
      ],
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.6,
              color: Colors.green,
            ),
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Savings Account",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "114056789029",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Spacer(),
            Text(
              "RM 100,000",
              style: TextStyle(
                color: Colors.green,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MaeRow extends StatelessWidget {
  const _MaeRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableScrollActionPane(),
      actionExtentRatio: 0.6,
      secondaryActions: [
        IconSlideAction(
          caption: 'View MAE dashboard',
          color: ThemeColors.kdarkGrey,
          icon: Icons.more_horiz,

          // onTap: () => _showSnackBar('More'),
        ),
      ],
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.6,
              color: Colors.green,
            ),
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MAE",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "1140590989029",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Spacer(),
            Text(
              "RM 20,000",
              style: TextStyle(
                color: Colors.green,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
