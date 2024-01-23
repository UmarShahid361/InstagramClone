import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postID;
  final datePublished;
  final String postURL;
  final String profileImage;
  final likes;

  const Post({
    required this.description,
    required this.uid,
    required this.username,
    required this.postID,
    required this.datePublished,
    required this.postURL,
    required this.profileImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "postURL": postURL,
        "description": description,
        "datePublished": datePublished,
        "profileImage": profileImage,
        "likes": likes,
        "postID": postURL
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      username: snapshot['username'],
      uid: snapshot['uid'],
      postURL: snapshot['postURL'],
      description: snapshot['description'],
      datePublished: snapshot['datePublished'],
      postID: snapshot['postID'],
      profileImage: snapshot['profileImage'],
      likes: snapshot['likes'],
    );
  }
}
