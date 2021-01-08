import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/data/chat_json.dart';
import 'package:flutter_whatsapp/theme/colors.dart';
import 'package:flutter_whatsapp/ui/chat_detail_page.dart';
import 'package:line_icons/line_icons.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: bgColor,
      leading: IconButton(
        onPressed: () {},
        icon: Text(
          "Edit",
          style: TextStyle(
              fontSize: 16.0, color: primary, fontWeight: FontWeight.w500),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.edit, color: primary),
        ),
      ],
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Chats",
                style: TextStyle(
                  fontSize: 23.0,
                  color: white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                height: 38.0,
                decoration: BoxDecoration(
                  color: textfieldColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  style: TextStyle(color: white),
                  cursorColor: primary,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      LineIcons.search,
                      color: white.withOpacity(0.3),
                    ),
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: white.withOpacity(0.3),
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Broadcast List",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: primary,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "New Group",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: primary,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 5, right: 5),
          child: Divider(
            color: white.withOpacity(0.3),
          ),
        ),
        SizedBox(height: 15.0),
        Column(
          children: List.generate(chat_data.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChatDetailPage(
                      name: chat_data[index]['name'],
                      img: chat_data[index]['img'],
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(chat_data[index]['img']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Container(
                        height: 85.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: (size.width - 40) * 0.6,
                                      child: Text(
                                        chat_data[index]['name'],
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        chat_data[index]['date'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: white.withOpacity(0.4),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  width: (size.width - 40) * 1,
                                  child: Text(
                                    chat_data[index]['text'],
                                    style: TextStyle(
                                      fontSize: 15,
                                      height: 1.3,
                                      color: white.withOpacity(0.4),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: white.withOpacity(0.3),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
