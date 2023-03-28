import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/textInfo.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "User Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 1,
                        ),
                        Column(
                          children: const [
                            Text(
                              "Ramesh Yadav",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "User ID: 123456",
                              style: TextStyle(color: Colors.white),
                            ),
                            
                          ],
                        ),
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/farmer2.png'),
                        ),
                        const SizedBox(
                          width: 1,
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: const ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.edit),
                          Text("Edit Profile"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      const textInfo(
                          givenIcon: Icons.phone, text: '+91 8100297525'),
                      const textInfo(
                          givenIcon: Icons.email_outlined,
                          text: 'ramesh.babu@example.com'),
                      const textInfo(
                          text: "Malakhpur, Madhya Pradesh", givenIcon: Icons.home),
                      const textInfo(givenIcon: Icons.person, text: 'Farmer'),
                      const textInfo(
                          givenIcon: Icons.verified, text: 'Verified'),
                      const SizedBox(height: 16),

                      //ImageButtons with bottom text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  // TODO, open LoadEligibiity
                                },
                                icon: const Icon(FontAwesomeIcons.moneyBill),
                                iconSize: 50,
                                color: Colors.green,
                              ),
                              const Text("Loan Eligibility"),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  //TODO creditCard Eligibility
                                },
                                icon: const Icon(FontAwesomeIcons.creditCard),
                                iconSize: 50,
                                color: Colors.green,
                              ),
                              const Text("Credit Card Eligibility"),
                            ],
                          ),
                        ],
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
