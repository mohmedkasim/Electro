import 'package:electure_project/home.dart';
import 'package:flutter/material.dart';

import 'HostServices.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = new TextEditingController();
  final passwordController = new TextEditingController();
  var username;
  var password;
  var isLoad = false;
  void clear() {
    setState(() {
      usernameController.clear();
      passwordController.clear();
      isLoad = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Text('Electure',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            child: Column(
              children: [
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      isDense: true,
                      hintText: "اسم المستخدم",
                      fillColor: Colors.white,
                      filled: true,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          borderSide: BorderSide(color: Colors.white))),
                  onChanged: (val) {
                    username = val;
                  },
                ),
                SizedBox(height:10),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      isDense: true,
                      hintText: "كلمة المرور",
                      fillColor: Colors.white,
                      filled: true,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          borderSide: BorderSide(color: Colors.white))),
                  onChanged: (val) {
                    password = val;
                  },
                ),
                SizedBox(height: 40,),
                isLoad?CircularProgressIndicator():RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () async {
                      setState((){
                        isLoad = true;
                      });
                      var result = await HostServices.login(username, password);
                      if(result.statusCode == 200){

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                      } else {
                        print('false');
                      }
                    },child:Text('دخول',style:TextStyle(color: Colors.white)))
              ],
            ),
          ),
        ],
      )
    );
  }
}
