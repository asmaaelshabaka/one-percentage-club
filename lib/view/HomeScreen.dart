import 'package:flutter/material.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet_field.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:get/get.dart';
import 'package:onepercentage/view/widgets/customaddbutton.dart';

import '../controller/homechallengecontroller.dart';
import '../controller/user-challenge-controller.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(HomeChallengeController());
  final UserController = Get.put(UserChallengeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      body: ListView(
        children: [

          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             

                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
                Container(
                  width: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.filter_list,
                            color: Colors.white,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Text(
                  'One',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'PercentageClub',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
            ),
            child: ListView(primary: false,padding: EdgeInsets.only(left: 25,right: 20),
              children: [
                SizedBox(
                  height: 50,
                ),
                //--the code of challenges list view------//
                GetX<HomeChallengeController>(builder: (controller) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      children: [

                        Column(
                          children: [
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: controller.challenges.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return controller.challenges[index]?.groupName
                                              .toString() ==
                                          "1"
                                      ? CheckboxListTile(
                                          title: Text(controller
                                              .challenges[index]!.challengeName
                                              .toString()),
                                          activeColor: Colors.green,
                                          checkColor: Colors.black,
                                          secondary: Image.asset(controller.challenges[index!]!.IconName.toString()),
                                          value: false,
                                          onChanged: (value) {})
                                      : SizedBox(
                                          height: 0,
                                        );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            CustomaddButton()
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 300,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: controller.challenges.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return controller.challenges[index]?.groupName
                                              .toString() ==
                                          "2"
                                      ? CheckboxListTile(
                                          title: Text(controller
                                              .challenges[index]!.challengeName
                                              .toString()),
                                          activeColor: Colors.green,
                                          checkColor: Colors.black,
                                          secondary: Image.asset(controller.challenges[index]!.IconName.toString()),
                                          value: false,
                                          onChanged: (value) {})
                                      : SizedBox(
                                          height: 0,
                                        );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 300,
                            ),
                            CustomaddButton()
                          ],
                        )
                      ],
                    ),
                  );
                }),
                //---ending of challenges code design--------//
              ],
            ),
          ),
        ],
      ),
    );
  }
}
