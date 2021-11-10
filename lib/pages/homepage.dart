import 'package:chatty/pages/chatty.dart';
import 'package:chatty/theme.dart';
import 'package:chatty/widget/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: orangeColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (context) {
              return ChatMassage();
            }));
          },
          backgroundColor: orangeColor,
          child: Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/profil.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Diki Purwanto',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                SizedBox(height: 5),
                Text(
                  'Treveller',
                  style: TextStyle(color: orangeTipis, fontSize: 16),
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  //height: 100,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Konco',
                        style: titleText,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: 'assets/friend1.png',
                        name: 'Adi Pure',
                        text: 'Welcome to the hell',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/friend2.png',
                        name: 'Adi Pure',
                        text: 'Welcome to the hell',
                        time: 'Now',
                        unread: false,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Group',
                        style: titleText,
                      ),
                      ChatTile(
                        imageUrl: 'assets/grup1.png',
                        name: 'Adi Pure',
                        text: 'Welcome to the hell',
                        time: 'Now',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/grup2.png',
                        name: 'Adi Pure',
                        text: 'Welcome to the hell',
                        time: 'Now',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/grup3.png',
                        name: 'Adi Pure',
                        text: 'Welcome to the hell',
                        time: 'Now',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/grup3.png',
                        name: 'Adi Pure',
                        text: 'Welcome to the hell',
                        time: 'Now',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/grup3.png',
                        name: 'Adi Pure',
                        text: 'Welcome to the hell',
                        time: 'Now',
                        unread: false,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
