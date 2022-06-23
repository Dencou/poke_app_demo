import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget{
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title:const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child:  TextField(
            textInputAction: TextInputAction.go,
            decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(Icons.search),
                label: Text("Search your favorite pokemon here!"),
                fillColor: Colors.white,
                border: OutlineInputBorder()
            ),
          ),
        )
    );

  }
  @override
  Size get preferredSize => Size.fromHeight(70);
}
