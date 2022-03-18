import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'ForgotPassword',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Text('Change password'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
          title: const Text(
            'Change Password',
          ),
        ),
        body: Stack(children: [
          Positioned(
            left: 10,
            right: 280,
            bottom: 380,
            child: const Text(
              'Enter your mail id ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //   left: 15,
          //   right: 15,
          //   bottom: 380,
          //   child: Container(
          //     height: 190,
          //     decoration: BoxDecoration(
          //         image:
          //             DecorationImage(image: AssetImage("Assets/rent.png"))),
          //   ),
          // ),
          const Positioned(
            left: 15,
            right: 15,
            bottom: 330,
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: "Mail@example.com",
                  labelStyle: TextStyle(color: Color(0xFF424242))),
            ),
          ),
          Center(
              child: ElevatedButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Mail sent'),
                content:
                    const Text('Password Link has been sent to your mail.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: const Text('Send'),
          ))
        ]));

    // onPressed: () {
    //   Navigator.pop(context);
    // },
    // child: const Text('Send'),
  }
}
