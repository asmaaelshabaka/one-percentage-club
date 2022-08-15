import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class loginController extends GetxController {
  final _googlsignIn = GoogleSignIn();
  final googleAccount = Rx<GoogleSignInAccount?>(null);
  login()async{
    googleAccount.value=await _googlsignIn.signIn();
  }
}
