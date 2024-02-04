import 'package:flutter/material.dart';

import 'onbonding_page2.dart';

class Onbonding_Screen extends StatefulWidget {
  const Onbonding_Screen({super.key});

  @override
  State<Onbonding_Screen> createState() => _Onbonding_ScreenState();
}

class _Onbonding_ScreenState extends State<Onbonding_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA080808),
      body: Container(
        width: double.infinity,
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  child: InkWell(
                    child: Text(
                      "SKIP",
                      style: TextStyle(color: Colors.grey),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Onbonding_page2(),));
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("Assets/image/onbonding1.png")),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "- - - ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 40),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Manage your tasks",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              width: 250,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "You can easily manage all of your daily "
                  "tasks in DoMe for free",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ),
            // FloatingActionButton.extended(
            //   backgroundColor: const Color(0xff8875FF),
            //   foregroundColor: Colors.black,
            //   onPressed: () {
            //     // Respond to button press
            //   },
            //   //icon: Icon(Icons.add),
            //   label: Text('NEXT'),
            // ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
              //  crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Onbonding_page2(),));

                    },
                    child: Text("NEXT"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff8875FF),
                      foregroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                      ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
