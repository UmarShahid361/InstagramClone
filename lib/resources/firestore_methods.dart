
import 'dart:typed_data';
import 'package:uuid/uuid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:insta/models/posts.dart';
import 'package:insta/resources/storage_methods.dart';

class FirestoreMethods {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   upload post
  Future<String> uploadPost(
      String description,
      Uint8List file,
      String uid,
      String username,
      String profileImage,
      ) async {
    String res = "Some error occurred";
    try {
      String photoURL = await StorageMethods().uploadImageToStorage('posts', file, true);

      String postID = const Uuid().v1();
      Post post = Post(
        description: description,
        uid: uid,
        username: username,
        postID: postID,
        datePublished: DateTime.now(),
        postURL: photoURL,
        profileImage: profileImage,
        likes: [],
      );
      
      _firestore.collection('post').doc(postID).set(post.toJson(),);
      res = "success";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}