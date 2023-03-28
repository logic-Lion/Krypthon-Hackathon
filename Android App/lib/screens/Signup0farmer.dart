import 'package:bit_flip/screens/login0farmer.dart';
import 'package:flutter/material.dart';

import './main_screen.dart';
import '../post0get.dart';

class farmerSignUp extends StatefulWidget {
  const farmerSignUp({Key? key}) : super(key: key);
  static const routeName = '/farmer-signup';

  @override
  State<farmerSignUp> createState() => _farmerSignUpState();
}

class _farmerSignUpState extends State<farmerSignUp> {
  TextEditingController _name = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _phNo = TextEditingController();
  TextEditingController _aadharNo = TextEditingController();
  TextEditingController _bplNo = TextEditingController();
  TextEditingController _pswd = TextEditingController();
  TextEditingController _cPswd = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  API obj = API();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
        
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8.0,top: 20.0),
                    child: Text("SIGN UP",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _name,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter something";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        hintText: "Enter Name",
                        labelText: "Name",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _phNo,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter something";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        hintText: "Enter Phone Number",
                        labelText: "Phone Number",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _aadharNo,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter something";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        hintText: "Enter Aadhar Number",
                        labelText: "Aadhar Number",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _bplNo,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter something";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        hintText: "Enter BPL Number",
                        labelText: "BPL Number",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: _pswd,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter something";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: _cPswd,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter something";
                        }
                        if (_cPswd.text != _pswd.text) {
                          print(_cPswd.text);
                          print(_pswd.text);
                          return "Passwords Don't Match";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        hintText: "Confirm Password",
                        labelText: "Confirm Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _address,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter something";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        hintText: "Enter Address",
                        labelText: "Address",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        print("pressed");
        
                        if (_formkey.currentState!.validate()) {
                          // await obj.post({
                          //   "name": _name.text,
                          //   "password": _pswd.text,
                          //   "Phone_number": _phNo.text,
                          //   "Aadhar_number": _aadharNo.text,
                          //   "BPL_number": _bplNo.text,
                          //   "Field_address": _address.text
                          // }, "http://192.168.218.242:8000/api/v1/farmer/");
                          print("Submission successful");
                          Navigator.of(context).pushReplacementNamed(MainScreen.routeName);
                          return;
                        } else {
                          print("Submission unsuccessful");
                          return;
                        }
                      },
                      child: Text("SUBMIT",style: TextStyle(fontSize: 20),),
                      style: ElevatedButton.styleFrom(
                          // padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                          primary: Colors.green,
                          minimumSize: Size.fromHeight(50),
                          shape: StadiumBorder(),
                      ),
                    ),
                  ),
                  Text("Already have an account?"),
              TextButton(
                child: Text('Login'),
                onPressed: (){
                  Navigator.of(context).pushNamed(loginFarmer.routeName);
                }
              ,)
                ],
              ),
            ),
          ),
        ),
    );
  }
}