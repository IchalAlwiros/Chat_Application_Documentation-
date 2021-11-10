import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext contexsst) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleText,
              ),
              Text(
                text,
                style: unread
                    ? subText.copyWith(
                        color: blackColor,
                      )
                    : subText,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subText,
          )
        ],
      ),
    );
  }
}
