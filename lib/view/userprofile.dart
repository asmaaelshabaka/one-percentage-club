import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Asmaa Elshabaka',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 75,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                      color: Colors.white),
                ),
                height: MediaQuery.of(context).size.height - 100,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                  top: 30,
                  left: (MediaQuery.of(context).size.width / 2) - 100,
                  child: Hero(
                    tag: 'ProfileImage',
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage('images/ProfileImage.jpg'),
                            fit: BoxFit.cover),
                      ),
                      height: 200,
                      width: 200,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
