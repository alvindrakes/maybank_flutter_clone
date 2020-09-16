import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:maybank_flutter_clone/contants/theme_colors.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 240,
          width: Get.width,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 0.3,
                color: Colors.grey,
              ),
            ),
          ),
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
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
    ));
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
          color: ThemeColors.darkGrey,
          icon: Icons.more_horiz,

          // onTap: () => _showSnackBar('More'),
        ),
        IconSlideAction(
          caption: 'TRANSFER',
          color: ThemeColors.darkGrey,
          icon: Icons.delete,
          //onTap: () => _showSnackBar('Delete'),
        ),
        IconSlideAction(
          caption: 'MOBILE',
          color: ThemeColors.darkGrey,
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
          color: ThemeColors.darkGrey,
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
