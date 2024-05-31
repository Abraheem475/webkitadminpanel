import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webkitadminpanel/helper_classes/dashboard_header.dart';
import 'package:webkitadminpanel/helper_classes/text_class.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height:70.0,
                width: Get.width,
                  color: Colors.white,
                  child: const DashboardHeader()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            TextClass().textClass(text: "Dashboard", fontSize: 18.0,fontWeight: FontWeight.bold),
                          ],
                        ),
                        Row(
                          children: [
                            TextClass().textClass(text:"Webkit",fontSize: 12.0,textColor: Colors.blue),
                            const SizedBox(width: 5.0,),
                            const Icon(Icons.arrow_forward_ios_outlined,size: 10.0,),
                            const SizedBox(width: 5.0,),
                            TextClass().textClass(text:"Ecommerce",fontSize: 12.0,textColor: Colors.black),
                            const SizedBox(width: 5.0,),
                            const Icon(Icons.arrow_forward_ios_outlined,size: 10.0,),
                            const SizedBox(width: 5.0,),
                            TextClass().textClass(text:"Dashboard",fontSize: 12.0,textColor: Colors.black),
                            const SizedBox(width: 5.0,),
                            // Icon(Icons.arrow_forward_ios_outlined,size: 10.0,),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
