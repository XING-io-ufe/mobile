import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/profile_item.dart';
import 'package:flutter_application_2/theme/io_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileItem(
          icon: Icon(Icons.person, size: 32, color: IOColors.success400),
          text: 'Settings',
        ),
        ProfileItem(
          icon: Icon(Icons.people_alt, size: 32, color: IOColors.caution400),
          text: 'Team',
        ),
        ProfileItem(
          icon: Icon(
            Icons.bookmark_added_rounded,
            size: 32,
            color: IOColors.primary500,
          ),
          text: 'Bank',
        ),
      ],
    );
  }
}
