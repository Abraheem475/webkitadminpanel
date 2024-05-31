import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webkitadminpanel/helper_classes/slide_list_tile.dart';

import '../route/route.dart';

class SlideMenu extends StatelessWidget {
  const SlideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [

        DrawerHeader(child:Center(child: Text("WebKit",style: TextStyle(color: Colors.blue,fontSize: 14.0,fontWeight: FontWeight.bold),))),
        Consumer(
            builder: (context,value,child){
              return SlideListTile(text: "Dashboard", isTrailing: false, screenIndex: Routes.dashboardRoute,);
            },),

        Text("Apps",style: TextStyle(color: Colors.grey,fontSize: 12)),
        SlideListTile(text: "Calender", isTrailing: false, screenIndex: Routes.calenderRoute,),
        SlideListTile(text: "Chat", isTrailing: false, screenIndex: Routes.chatRoute,),
        SlideListTile(text: "Contact", isTrailing: true, screenIndex: Routes.contactsRoute,),
        Consumer(
            builder:(context,value,child){
              return SlideListTile(text: "CRM", isTrailing: true, screenIndex: Routes.crmRoute,);
              },),
        SlideListTile(text: "Ecommerce", isTrailing: true, screenIndex: Routes.ecommerceRoute,),
      ],
      ),
    );
  }
}
