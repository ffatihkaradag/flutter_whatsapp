import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/data/chat_json.dart';
import 'package:flutter_whatsapp/theme/colors.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Text(
            "Settings",
            style: TextStyle(
              fontSize: 23,
              color: white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 90,
          decoration: BoxDecoration(color: textfieldColor),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(profile[0]['img']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          profile[0]['name'],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: white,
                          ),
                        ),
                        Text(
                          "Hey there! I am\nusing Whatsapp.",
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.3,
                            fontWeight: FontWeight.w400,
                            color: white.withOpacity(0.5),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: white.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.qr_code,
                          color: primary,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
        Column(
          children: List.generate(
            settingSectionOne.length,
            (index) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(color: textfieldColor),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 8, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: settingSectionOne[index]['color'],
                                ),
                                child: Center(
                                  child: Icon(
                                    settingSectionOne[index]['icon'],
                                    color: white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Text(
                                settingSectionOne[index]['text'],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: white.withOpacity(0.2),
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 30),
        Column(
          children: List.generate(
            settingSectionTwo.length,
            (index) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(color: textfieldColor),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 8, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: settingSectionTwo[index]['color'],
                                ),
                                child: Center(
                                  child: Icon(
                                    settingSectionTwo[index]['icon'],
                                    color: white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Text(
                                settingSectionTwo[index]['text'],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: white.withOpacity(0.2),
                            size: 15,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 30),
        Column(
          children: List.generate(
            settingSectionThree.length,
            (index) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(color: textfieldColor),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 8, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: settingSectionThree[index]['color'],
                                ),
                                child: Center(
                                  child: Icon(
                                    settingSectionThree[index]['icon'],
                                    color: white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Text(
                                settingSectionThree[index]['text'],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: white.withOpacity(0.2),
                            size: 15,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
