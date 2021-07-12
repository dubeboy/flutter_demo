import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/user_model.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, @required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: ProfileAvatar(imageUrl: currentUser.imageUrl),
              ),
              const SizedBox(width: 8.0), // Add const so that it does not get rendered
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "whats on your mind"
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 10.0, thickness: 0.5),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                    onPressed: () => {'Live'},
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: const Text("Live")
                ),
                VerticalDivider(width: 8.0),
                FlatButton.icon(
                    onPressed: () => {'Live'},
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.red,
                    ),
                    label: const Text("Live")
                ),
                VerticalDivider(width: 8.0),
                FlatButton.icon(
                    onPressed: () => {'Live'},
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.red,
                    ),
                    label: const Text("Live")
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
