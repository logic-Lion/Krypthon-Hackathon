import 'package:bit_flip/screens/main_screen.dart';
import 'package:flutter/material.dart';

import './Signup0farmer.dart';
class loginFarmer extends StatelessWidget {

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Login Text

      body:Container(
          // decoration: BoxDecoration(
          //   shape: BoxShape.rectangle,
          //   image: DecorationImage(
          //     image: AssetImage('assets/images/login.jpg'),
          //     alignment: Alignment.bottomCenter,
          //   ),
          // ),
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 90,),

              Text("Login",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),),

              SizedBox(height: 50,),

              TextFormField(
                decoration:
               InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
               ),),

              SizedBox(height: 30,),

              TextFormField(
                decoration:
                InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),),

              SizedBox(height: 30,),

              TextButton(onPressed: (){
                Navigator.of(context).pushNamed(MainScreen.routeName);
              }, child: Text("Login"), style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              )),

              SizedBox(height: 30,),

              Text("Don't have an account?"),
              TextButton(
                child: Text('Sign Up'),
                onPressed: (){
                  Navigator.of(context).pushNamed(farmerSignUp.routeName);
                }
              ,)
            ],
          )
        )
      );
  }
}