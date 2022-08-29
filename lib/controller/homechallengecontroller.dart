import 'package:get/get.dart';
import 'package:onepercentage/model/challenges.dart';

class HomeChallengeController extends GetxController {
  var challenges = <Challenges?>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchChallenges();
  }

  void fetchChallenges() async {
    await Future.delayed(Duration(seconds: 1));
    var serverChallenges = [
      Challenges('Reading 30 min', '1','images/books.png'),
      Challenges('running 30 min', '1','images/running.png'),
      Challenges('swimming 30 min', '1','images/swimming.png'),
      Challenges('sleep 30 min', '1','images/sleep.png'),
      Challenges('Reading 60 min', '2','images/books.png'),
      Challenges('Running 60 min', '2','images/running.png'),
      Challenges('Sleep 60 min', '2','images/sleep.png'),
    ];
    challenges.value=serverChallenges;
  }
}
