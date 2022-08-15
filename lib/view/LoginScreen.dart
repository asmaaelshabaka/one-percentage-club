import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../controller/LogInController.dart';

class LoginScreen extends StatelessWidget {
  final controller = Get.put(loginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LogIn Screen'),
      ),
      body: Center(
        child: Obx(() {
          return controller.googleAccount.value == null
              ? LoginButton()
              : Container(
                  child: Column(
                    children: [
                      Text(controller.googleAccount.value!.displayName
                          .toString())
                    ],
                  ),
                );
        }),
      ),
    );
  }

  FloatingActionButton LoginButton() {
    return FloatingActionButton.extended(
      onPressed: () async {
        await controller.login();
      },
      label: Text('SignIn With Your Google Account'),
      icon: Image.asset(
        'images/GoogleIcon.png',
        height: 20,
        width: 20,
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }
}

// class LoginButton extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton.extended(
//       onPressed: () {
//         GoogleSignIn().signIn();
//       },
//       label: Text('SignIn With Your Google Account'),
//       icon: Image.asset(
//         'images/GoogleIcon.png',
//         height: 20,
//         width: 20,
//       ),
//       backgroundColor: Colors.white,
//       foregroundColor: Colors.black,
//     );
//   }
// }
