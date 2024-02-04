import 'package:flutter/material.dart';

import 'Onbonding_page1.dart';
import 'onbonding_page3.dart';

class Onbonding_page2 extends StatefulWidget {
  const Onbonding_page2({super.key});

  @override
  State<Onbonding_page2> createState() => _Onbonding_page2State();
}

class _Onbonding_page2State extends State<Onbonding_page2> {
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Onbonding_page3(),
                          ));
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("Assets/image/onbonding2.png")),
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
              "Create daily routine",
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
                  "In Uptodo  you can create your personalized routine to stay productive",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 30),
                      child: InkWell(
                        child: Text(
                          "BACK",
                          style: TextStyle(color: Colors.grey),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Onbonding_Screen(),
                              ));
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 150,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Onbonding_page3(),
                            ));
                      },
                      child: Text("NEXT"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff8875FF),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
