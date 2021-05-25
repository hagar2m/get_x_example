import 'package:flutter/material.dart';
import 'package:get_x_example/models/user_model.dart';

class UserItemWidget extends StatelessWidget {
  final UserData item;

  UserItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(
            image: NetworkImage(
              item.avatar
            ),
            height: 100.0,
          ),
          
          SizedBox(height: 10.0),

          Text("${item.firstName} ${item.lastName}"),

          Text("${item.email}"),

        ],
      ),
    );
  }
}