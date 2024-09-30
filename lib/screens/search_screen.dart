import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ticket_project/utils/app_layout.dart';
import 'package:ticket_project/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?",style: Styles.headingStyle.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child:
            Container(
              padding: EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50)),),
                      color:  Colors.white,
                    ),
                    child:const Center(child:Text("Airline Tickets")),
                  ),
                  Container(
                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50)),),
                      color:  Colors.transparent,
                    ),
                    child:const Center(child:Text("Hotels")),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
