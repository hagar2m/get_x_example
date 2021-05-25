import 'package:flutter/material.dart';
import 'package:get_x_example/view/widgets/user_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("home")
      // ListView.builder(itemBuilder: (_, index) {
      //   return Text("data");
      //   // UserItemWidget();
      // }),
    );
  }
}
