import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:onepercentage/core/services/firestoreuser.dart';
import 'package:onepercentage/model/user_profile_model.dart';

class loginController extends GetxController {
  final _googlsignIn = GoogleSignIn();
  final googleAccount = Rx<GoogleSignInAccount?>(null);
  FirebaseAuth _auth = FirebaseAuth.instance;
  // login()async{
  //   googleAccount.value=await _googlsignIn.signIn();
  // }
  googleSignInMethod() async {
    googleAccount.value = await _googlsignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleAccount.value!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.idToken);
    await _auth.signInWithCredential(credential).then((user)async => {
      await    FireStoreUser().addUserToFireStore(UserModel(
              UserId: user.user!.uid,
              UserName: user.user!.displayName.toString(),
              UserEmail: user.user!.email.toString(),
              UserPic: user.user!.photoURL.toString()))
        });
  }
}
