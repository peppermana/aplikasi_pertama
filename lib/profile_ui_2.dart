import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //avatar
            Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/35af6a41332353.57a1ce913e889.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text("Danillo",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  Text("danillo@usscreen.tv"),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Edit Profile"),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Text(
                "CONTENT",
              ),
            ),
            MenuItemContent(title: 'favorite', icon: Icons.favorite, arrow: Icons.chevron_right_outlined,),
            MenuItemContent(title: 'download', icon: Icons.language_outlined, arrow: Icons.chevron_right_outlined,),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
    ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Text(
                "PREFERENCES",
              ),
            ),
            MenuItemPreferences(title: 'Language', icon: Icons.language_outlined, name: 'english', ),
            MenuItemPreferences(title: 'Dark Mode', icon: Icons.dark_mode_outlined, name: '', ),
            MenuItemPreferences(title: 'Only Download Wifi', icon: Icons.wifi_outlined, name: '',),
            MenuItemPreferences(title: 'Play in Background', icon: Icons.featured_play_list_outlined, name: '',),

          ],
        ),
      ),
    );
  }
}

class MenuItemContent extends StatelessWidget {
  final String title;
  final IconData icon;
  final IconData arrow;
  const MenuItemContent({
    Key? key, required this.title, required this.icon, required this.arrow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Text(title),
        Expanded(child: SizedBox(),
        ),
        Icon(arrow),
      ],
    );
  }
}

class MenuItemPreferences extends StatelessWidget {
  final String title;
  final IconData icon;
  final String name;
  const MenuItemPreferences({
    Key? key, required this.title, required this.icon, required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Text(title),
        Expanded(child: SizedBox(),
        ),
        Text(name),
        Icon(Icons.chevron_right_outlined),
      ],
    );
  }
}
