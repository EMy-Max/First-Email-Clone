import 'package:flutter/material.dart';

void main() {
  runApp(const EClone());
}

class EClone extends StatelessWidget {
  const EClone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Email Clone Two',
      home: EHome(),
    );
  }
}

class EHome extends StatelessWidget {
  const EHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.blueGrey[50],
                ),
                child: const Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Search in mail",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black45,
                          fontSize: 16
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.lightGreen,
                      child: Text(
                          "m",
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Primary",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MessageBox(),//Row
                    SizedBox(
                      height: 15,
                    ),
                    MessageBox(),//Row
                    SizedBox(
                      height: 15,
                    ),
                    MessageBox(), //Row
                    SizedBox(
                      height: 15,
                    ),
                    MessageBox(), //Row
                    SizedBox(
                      height: 15,
                    ),
                    MessageBox(), //Row
                    SizedBox(
                      height: 15,
                    ),
                    MessageBox(), //Row
                    SizedBox(
                      height: 15,
                    ),
                    MessageBox(),
                    SizedBox(
                      height: 15,
                    ),
                    MessageBox(), //Row
                    SizedBox(
                      height: 15,
                    ),
                    MessageBox(),//Row
                    SizedBox(
                      height: 15,
                    ),
                    MessageBox(),//Row
                    SizedBox(
                      height: 15,
                    ),
                    MessageBox(), //Row
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
class MessageBox extends StatelessWidget {
  final String msgTitle;
  final String msg;
  final String msg2;
  const MessageBox({
    this.msgTitle = "",
    this.msg = "",
    this.msg2 = ""
  });

  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.orange,
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(msgTitle,
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(msg),
            Text(msg2,
              style: TextStyle(
                  fontSize: 13.0
              ),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Oct 17"),
            Icon(Icons.star_border_outlined),
          ],
        )
      ],
    );
  }
}
