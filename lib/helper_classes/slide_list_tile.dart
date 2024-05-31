import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webkitadminpanel/provider/menu_provider.dart';


class SlideListTile extends StatelessWidget {
   SlideListTile({super.key,this.leading,required this.text,required this.isTrailing,required this.screenIndex});
   var leading; String text; bool isTrailing;

   int screenIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<MenuProvider>(builder: (context,value,child){
        Provider.of<MenuProvider>(context,listen: false);
        return InkWell(
          onTap: (){
            print(value.selectedIndex);
            value.changeIndex(screenIndex);
          },
          child: ListTile(
            tileColor: Color(0xffB4CEE7),
            leading: leading,
            title: Text(text,style: const TextStyle(color: Colors.black,fontSize: 12.0),),
            trailing: isTrailing == true ? const Icon(Icons.arrow_drop_down_rounded) : null ,
          ),
        );
      },
      ),
    );
  }
}
