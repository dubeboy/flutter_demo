import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/post_model.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({Key key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      color: Colors.white,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Postheader(post: post),
              const SizedBox(height: 4.0),
              Text(post.caption),
              post.imageUrl != null
                  ? const SizedBox.shrink()
                  : const SizedBox(height: 6.0)
            ],
          ),
        ),
        post.imageUrl != null
            ? Padding(
          padding: EdgeInsets.only(top: 4.0),
            child: CachedNetworkImage(imageUrl: post.imageUrl)
            )
            : const SizedBox.shrink()
      ]),
    );
  }
}

class _Postheader extends StatelessWidget {
  final Post post;

  const _Postheader({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(
          imageUrl: post.user.imageUrl,
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    '${post.timeAgo}',
                    style: TextStyle(color: Colors.grey[200], fontSize: 12.0),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[200],
                    size: 12.0,
                  )
                ],
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () => {"print moew"},
          icon: const Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}
