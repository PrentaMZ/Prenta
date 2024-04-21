import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:printa/view/login&register_screen/register_body/register_body.dart';

import '../login_body/login_body.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand, // Expand the Stack to fill the entire screen
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Image(
                    image: AssetImage('images/header.png'),
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 550,
              left: 15,
              right: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Go ahead and set up\n your account',
                    style: TextStyle(
                      color: HexColor('##DDE6ED'),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Sign in-up to enjoy our offers',
                    style: TextStyle(
                      fontSize: 17,
                      color: HexColor('#94A3B8'),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            Positioned(
              top: 300,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        padding: EdgeInsets.only(top: 5,bottom: 5),
                        child: TabBar(
                          dividerColor: Colors.transparent,
                          labelColor: HexColor('#27374D'),
                          indicator: BoxDecoration(

                              color: Colors.white, borderRadius: BorderRadius.circular(30)
                          ),

                          tabs: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                              child: Tab(text: 'Login'),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                              child: Tab(text: 'Register'),
                            ),
                          ],
                        ),
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35,),
                    Expanded(
                      child: TabBarView(
                        children: [
                          LoginBody(),
                          RegisterBody(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
