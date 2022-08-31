import 'package:flutter/material.dart';

class CustomaddButton extends StatelessWidget {
  const CustomaddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => null,
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                  offset: Offset(5.5, 20.0),
                  blurRadius: 30.0,
                  color: Colors.grey.shade50)
            ],
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                height: 50,
                width: 110,
                child: Text(
                  'Add Challenge',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.apply(color: Colors.black),
                ),
                decoration: BoxDecoration(
                    color: Color(0xFF21BFBD),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(95),
                        topLeft: Radius.circular(95),
                        bottomRight: Radius.circular(200))),
              ),
              Icon(
                Icons.add,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
