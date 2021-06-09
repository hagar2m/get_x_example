import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_x_example/models/post_model.dart';
import 'package:get_x_example/services/app_urls.dart';

class PostsListItem extends StatelessWidget {
  final Post post;

  const PostsListItem({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 20, right: 20, bottom: 15, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(15),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.network(
                  "${AppUrls.postImageUrl}${post.id}",
                  height: 40,
                  width: 40,
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '2 days ago',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            post.body,
            style: TextStyle(color: Colors.black87),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  CupertinoIcons.heart,
                  color: Colors.redAccent,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  CupertinoIcons.bookmark,
                  color: Colors.black54,
                ),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  CupertinoIcons.hand_thumbsdown,
                  color: Colors.blueAccent,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  CupertinoIcons.hand_thumbsup,
                  color: Colors.blueAccent,
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
