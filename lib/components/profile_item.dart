import 'package:flutter/material.dart';
import 'package:flutter_application_2/theme/io_colors.dart';

class ProfileItem extends StatelessWidget {
  final Widget icon;
  final String text;
  const ProfileItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: IOColors.success400),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          icon,
          SizedBox(width: 20),
          Text(text, style: TextStyle(fontSize: 20)),
          Spacer(),
          Icon(Icons.arrow_right),
        ],
      ),
    );
  }
}
