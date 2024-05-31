import 'package:flutter/material.dart';

class SearchBarScreen extends StatelessWidget {
  const SearchBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: 38.0,
      width: 190.0,
      // margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.grey
        )
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          prefixIcon: Icon(Icons.search_outlined,color:Colors.grey,size: 18.0,),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: 'Search',
          helperStyle: TextStyle(color: Colors.blue,fontSize: 5.0)

        ),
      ),
    )
    ;
  }
}
