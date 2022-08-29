import 'package:get/get.dart';
import 'package:onepercentage/model/challenges.dart';

class UserChallengeController extends GetxController {
  var UserChallenges = <Challenges>[].obs;
  addToUserChALLENGES(Challenges Challeng)
  {
    UserChallenges.add(Challeng);
  }

}
