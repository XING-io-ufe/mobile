import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/profile_item.dart';
import 'package:flutter_application_2/theme/io_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/login_backgound_image.png',
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(
              color: const Color.fromARGB(251, 243, 243, 243),
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: Column(
              children: [
                SizedBox(height: 56),
                Text(
                  'Azaashi',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                ProfileItem(
                  icon: Icon(Icons.groups, size: 32, color: IOColors.icon400),
                  text: 'Team info',
                ),
                ProfileItem(
                  icon: Icon(Icons.settings, size: 32, color: IOColors.icon400),
                  text: 'Settings',
                ),
                ProfileItem(
                  icon: Icon(
                    Icons.emoji_events,
                    size: 32,
                    color: IOColors.icon400,
                  ),
                  text: 'Rank',
                ),
                ProfileItem(
                  icon: Icon(Icons.delete, size: 32, color: IOColors.icon400),
                  text: 'Delete account',
                ),
                ProfileItem(
                  icon: Icon(
                    Icons.logout,
                    size: 32,
                    color: IOColors.iconRed500,
                  ),
                  text: 'Log Out',
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 140,
          left: 140,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    'assets/images/logo_with_text.png',
                  ),
                ),
              ),
              Positioned(
                top: 65,
                left: 65,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.camera_alt,
                    size: 16,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
