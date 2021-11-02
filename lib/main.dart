
import 'package:flutter/material.dart';

import 'log_in_page.dart';

void main() {
  runApp(ParentApp());
}

class ParentApp extends StatelessWidget {
  const ParentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GirlApp(),
    );
  }
}


class GirlApp extends StatefulWidget {
  const GirlApp({Key? key}) : super(key: key);

  @override
  _GirlAppState createState() => _GirlAppState();
}

class _GirlAppState extends State<GirlApp> {
  @override
  Widget build(BuildContext context) {
    return     Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.blueAccent,
          title: Center(
              child: Text(
                "BMI",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.line_weight),
          )],
        ),
        body:SingleChildScrollView(child: Column(
          children: [
            Center(child: Image.asset("assets/bmilogo.png")),
            SizedBox(
              height: 15,
            ),

            Column(
              children: [
                Card(
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.call),
                        labelText: "Email or Phone Number",
                        hintText: "09052729928"),
                  ),
                ),SizedBox(height:5),
                Card(
                  child: TextFormField(
                    decoration: InputDecoration(
                         suffixIcon: Icon(Icons.remove_red_eye_sharp),
                        labelText: "Password",
                        hintText: "joyce"),
                    obscureText: false,
                  ),
                ),SizedBox(height:5),
                Card(
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye_sharp),
                        labelText: "Confirm Password",
                        hintText: "joyce"),
                    obscureText: false,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonTheme(
                  minWidth: 300.0,
                  height: 50.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),

            Text(
              "Forgotten Password?",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              height: 2,
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                onPressed: ()
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LogInPage()));
                },
                child: Text(
                  "Create New Account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ))],
        ),)
    );
  }
}
