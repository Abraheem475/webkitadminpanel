import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webkitadminpanel/helper_classes/search_bar.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white,
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
              SizedBox(width: 20.0),
              SearchBarScreen(),
            ],
          ),
          Row(children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.dark_mode_outlined,color: Colors.black87,size: 22,)),
            SizedBox(width: 5.0),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: Colors.black54,size: 22,)),
            SizedBox(width: 5.0),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.black54,size: 22,)),
          ],)
        ],
      ),
    );
  }
}
