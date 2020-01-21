import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{

  Icon fieldIcon;
  String hintText;

  LoginPage(this.fieldIcon,this.hintText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 250,
      child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: fieldIcon,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                  color: Colors.white,
                ),
                width: 200,
                height: 60,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: hintText,
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true
                    ),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],

          )

      ),
    )
    ;
  }

}