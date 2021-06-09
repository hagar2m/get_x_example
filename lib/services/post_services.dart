import 'api_request.dart';
import '../models/post_model.dart';
import 'app_urls.dart';

class PostServices {
  void getPostsList({
    Function() beforeSend,
    Function(List<Post> posts) onSuccess,
    Function(dynamic error) onError,
  }) {
    ApiRequest(url: AppUrls.postsUrl, data: null).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess((data as List).map((postJson) => Post.fromJson(postJson)).toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}