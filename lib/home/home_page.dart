import 'dart:ui';
import 'package:flutter/material.dart';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'pxfuel.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: width * 0.4,
                  height: height * 0.52,
                  decoration: BoxDecoration(
                    color: Colors.purple.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.withOpacity(0.2)),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            hintText: 'example@gmail.com',
                            suffixIcon: Icon(Icons.email),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            hintText: "Xyz*678#",
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                activeColor: Color(0xff020031),
                                checkColor: Color(0xff00376E),
                                value: true,
                                onChanged: (value) {},
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                contentPadding:
                                    EdgeInsets.only(left: 0, top: 0),
                                title: Text(
                                  "Remember Me",
                                  style: TextStyle(
                                      color: Color(0xff04A4E8), fontSize: 14),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(color: Color(0xff04A4E8)),
                              ),
                            ),
                          ],
                        ),

                        Container(
                          width: width*0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff020031),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Login"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
