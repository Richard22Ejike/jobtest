import 'package:flutter/material.dart';
import 'package:helptheguy/common/Navbar.dart';
import 'package:helptheguy/screen/homepage.dart';
import 'package:helptheguy/screen/information.dart';
import 'package:helptheguy/screen/signin.dart';






class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget{



  const DefaultAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 37.0, left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black,
              ),
              child: Image.asset('assets/help.png'),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Ministry of ',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text('Commerce',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 7,
                ),
                Container(
                  height: 25,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Center(
                    child: Text('Agent',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 3,
      automaticallyImplyLeading: false,
      actions: [
        PopupMenuButton(
          // add icon, by default "3 dot" icon
            icon: const Icon(Icons.menu,color: Colors.black,),
            itemBuilder: (context){
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text("My Profile"),
                ),

                PopupMenuItem<int>(
                  value: 1,
                  child: Text("Info"),
                ),

                PopupMenuItem<int>(
                  value: 2,
                  child: Text("Logout"),
                ),
              ];
            },
            onSelected:(value){
              if(value == 0){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>  homepage()));
              }else if(value == 1){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>  information()));
              }else if(value == 2){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>  signin()));
              }
            }
        ),

      ],

    );
  }
}