import 'package:flutter/material.dart';

class RagisterScreens extends StatefulWidget {
  const RagisterScreens({Key? key}) : super(key: key);

  @override
  State<RagisterScreens> createState() => _RagisterScreensState();
}

class _RagisterScreensState extends State<RagisterScreens> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Complex Api Login")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Email"),
              TextFormField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Password"),
              TextFormField(
                controller: _password,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Ragister"))
            ]),
      ),
    );
  }
}
