import 'package:flutter/material.dart';
import 'package:flutter_application_2/theme/io_colors.dart';

class ProfileItem extends StatelessWidget {
  final Widget icon;
  final String text;
  const ProfileItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: IOColors.border400),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          icon,
          SizedBox(width: 15),
          Text(text, style: TextStyle(fontSize: 16)),
          Spacer(),
          Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
