
import 'package:get/get.dart';
import 'package:get_x_example/models/post_model.dart';
import 'package:get_x_example/services/post_services.dart';

class PostsController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    PostServices().getPostsList(
      onSuccess: (posts) {
        postsList.addAll(posts);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
    super.onInit();
  }
}