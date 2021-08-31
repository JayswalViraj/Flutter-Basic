
import 'package:dayone/utils/Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var username = "";
  var changedbutton= false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/logini.png",
            width: 200,
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $username",

            style: TextStyle(fontSize: 39),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(

                  onChanged: (value){

                    username = value;
                    setState(() {

                    });

                  },


                  decoration: InputDecoration(
                    hintText: "Enter a username",

                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter a Password",
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 39,
          ),
          InkWell(
            onTap: () async {


              setState(() {
                changedbutton = true;
              });

              await Future.delayed(Duration(seconds: 1));

              Navigator.pushNamed(context, MyRoutes.homepage);
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: 50,
              width: changedbutton? 50: 150,
              child: Center(
                  child: changedbutton? Icon(Icons.done, color: Colors.white,): Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: changedbutton? BorderRadius.circular(100):BorderRadius.circular(10),
                
//shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
