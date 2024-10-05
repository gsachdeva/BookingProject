import 'package:flutter/material.dart';

import 'app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTabs;
  final String secondTabs;
  const AppTicketTabs({Key? key,required this.firstTabs,required this.secondTabs});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return FittedBox(
      child:
      Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              width: size.width*.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50)),),
                color:  Colors.white,
              ),
              child: Center(child:Text(firstTabs)),
            ),
            Container(
              width: size.width*.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50)),),
                color:  Colors.transparent,
              ),
              child: Center(child:Text(secondTabs)),
            )
          ],
        ),
      ),
    );
  }
}
