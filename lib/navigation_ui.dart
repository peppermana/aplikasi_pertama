import 'package:flutter/material.dart';

class NavigationUi extends StatelessWidget {
  const NavigationUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 80,
          color: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home, color: Colors.purple,),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Home", style: TextStyle(color: Colors.purple),),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call_made_outlined, color: Colors.purple,),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Destination", style: TextStyle(color: Colors.purple),),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.collections_outlined, color: Colors.purple),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Gallery", style: TextStyle(color: Colors.purple),),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.settings_outlined, color: Colors.purple),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Settings", style: TextStyle( color: Colors.purple),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
