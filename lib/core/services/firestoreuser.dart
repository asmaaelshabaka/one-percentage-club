import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:onepercentage/model/user_profile_model.dart';

class FireStoreUser {
  final CollectionReference _UserCollectionRef =
      FirebaseFirestore.instance.collection('users');
  Future<void> addUserToFireStore(UserModel userModel) async {
    await _UserCollectionRef.doc(userModel.UserId).set(userModel.toJson());
  }
}
