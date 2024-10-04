import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ticket_project/utils/app_layout.dart';
import 'package:ticket_project/utils/app_styles.dart';
import 'package:ticket_project/widgets/AppIconText.dart';
import 'package:ticket_project/widgets/double_text_widget.dart';

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
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(18),
                horizontal: AppLayout.getWidth(12)),
            decoration: BoxDecoration(
              color: Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
            ),
            child:  Center(
              child: Text(
                "Find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            )
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View All"),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(450),
                width: size.width*.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow:[BoxShadow(
                    color: Colors.grey.shade100,
                    blurRadius: 1,
                    spreadRadius: 1
                  )]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/seats.jpg")
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text("20% discount on the early booking for this flight.Don't miss out this chance",
                        style: Styles.headingStyle2)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: AppLayout.getHeight(210),
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                        ),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey",style: Styles.headingStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                            Gap(AppLayout.getHeight(10)),
                            Text("Take the survey about our services and get the discount",style: Styles.headingStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),)
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18,color: Color(0xFF189999)),
                            color: Colors.transparent
                        ),
                      ))
                    ],
                  ),
                  Gap(AppLayout.getHeight(18)),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xFFEC6545)
                    ) ,
                    child: Column(
                      children: [
                        Text("Take love",style: Styles.headingStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
                        RichText(text: const TextSpan(
                          children:[
                            TextSpan(
                                text: '😊',
                                style: TextStyle(fontSize: 38)
                            ),
                            TextSpan(
                                text: '😊',
                                style: TextStyle(fontSize: 50)
                            ),
                            TextSpan(
                                text: '😊',
                                style: TextStyle(fontSize: 38)
                            ),
                          ]
                        )
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
