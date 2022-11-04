// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const portfolio());
}

class portfolio extends StatefulWidget {
  const portfolio({super.key});

  @override
  State<portfolio> createState() => _portfolioState();
}

class _portfolioState extends State<portfolio> {
  @override
  Widget build(BuildContext context) {
    var cardTextStyle =
        TextStyle(fontSize: 14, color: Color.fromRGBO(63, 63, 63, 1));
    // var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              // height: size.height * .3,
              height: 400,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  image: DecorationImage(
                alignment: Alignment.topCenter,
                image: const AssetImage('assets/head.png'),
              )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  height: 64,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage(
                          ('assets/profile.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ahsan Ali',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const Text(
                            '0345454455',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 18,
                    crossAxisSpacing: 18,
                    primary: false,
                    crossAxisCount: 2,
                    children: [
                      cardtile(icon: Icons.person,title: 'Personal Data',),
                      cardtile(icon: Icons.schedule,title: 'Course Schedule',),
                      cardtile(icon: Icons.bookmark,title: 'Study Result',),
                      cardtile(icon: Icons.book ,title: 'Course Plan',),
                      cardtile(icon: Icons.web_stories  ,title: 'Websites',),
                      cardtile(icon: Icons.apps  ,title: 'Apps',),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class cardtile extends StatelessWidget {

cardtile ({required this.icon, required this.title});
    final IconData icon;
    final String title;

  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 2,
      child: Column(
        children: [
          // SvgPicture.asset('assets/profile.jpg')

           Icon(
                            icon,
                            color: Colors.orange,
                            size: 120,
                          ),
                          Text(title,style: TextStyle(fontSize: 14, color: Color.fromRGBO(63, 63, 63, 1)),)
        ],
      ),
    );
  }
}
