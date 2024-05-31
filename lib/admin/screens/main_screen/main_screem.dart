import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webkitadminpanel/admin/screens/chat_screen.dart';
import 'package:webkitadminpanel/admin/screens/contact_screen.dart';
import 'package:webkitadminpanel/admin/screens/crm_screen.dart';
import 'package:webkitadminpanel/admin/screens/dashboard_screen.dart';
import 'package:webkitadminpanel/admin/screens/slide_menu.dart';
import 'package:webkitadminpanel/provider/menu_provider.dart';
import 'package:webkitadminpanel/responsive.dart';

import '../../route/route.dart';
import '../calender_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuProvider = Provider.of<MenuProvider>(context,listen: false);
    Widget screen;
    switch (menuProvider.selectedIndex){
      case Routes.dashboardRoute: screen  = const DashboardScreen();break;
      case Routes.calenderRoute : screen = const CalenderScreen(); break;
      case Routes.chatRoute : screen = const ChatScreen(); break;
      case Routes.contactsRoute : screen = const ContactScreen(); break;
      case Routes.crmRoute : screen = const CrmScreen(); break;
      default: screen = const DashboardScreen();
    }
    return Scaffold(
      key: context.read<MenuProvider>().scaffoldkey,
      drawer: const SlideMenu(),
      body: Row(
        children: [
          if(Responsive.isDesktop(context))
            const Expanded(
                flex: 2,
                child: SlideMenu()),
          Expanded(
              flex: 8,
              child: screen,)
        ],
      ),
    );
  }
}
