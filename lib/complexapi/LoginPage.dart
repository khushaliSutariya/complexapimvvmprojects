
import 'package:flutter/material.dart';
import 'package:mvvmprojects/controllers/AuthProvider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  AuthProvider? provider;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    provider = Provider.of<AuthProvider>(context, listen: false);
  }
  @override
  Widget build(BuildContext context) {
    provider = Provider.of<AuthProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(title: Text("Complex Api Login")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Username"),
              TextFormField(
                controller: _username,
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
              ElevatedButton(onPressed: ()  async{
                FocusScope.of(context).unfocus();
                var name = _username.text.toString();
                var password=_password.text.toString();

                var params = {
                  "name":name,
                  "password":password
                };

                await provider!.checklogin(params);

                if(provider!.islogin)
                  {
                    print(provider!.message);
                  }
                else
                  {
                    print(provider!.message);
                  }



              }, child: Text("Login"))
            ]),
      ),
    );
  }
}
