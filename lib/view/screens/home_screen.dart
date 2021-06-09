import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_x_example/controller/posts_controller.dart';
import 'package:get_x_example/view/widgets/loading_overlay.dart';
import 'package:get_x_example/view/widgets/post_list_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<PostsController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.postsList.length,
                itemBuilder: (context, index) => PostsListItem(
                  post: controller.postsList[index],
                ),
              ),
            );
          },
        ),
    );
  }
}
