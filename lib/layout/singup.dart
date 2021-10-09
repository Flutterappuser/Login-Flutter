import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override

  _testState createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 4,
          ),
          Container(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,
                children: [
                  Icon(Icons.flutter_dash,size: 70,),
                  Text('Flutter')
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
                 ),
              ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,),
                ),
                TextButton(
                  onPressed: (){
                    //TODO FORGOT PASSWORD SCREEN GOES HERE
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 2),
                  onPressed: () { },
                  child: Text('Sign in '),
                ),








              ],),
    ),


      TextButton(
        onPressed: (){
          //TODO FORGOT PASSWORD SCREEN GOES HERE
        },
        child: Text(
          'Create Account',
          style: TextStyle(color: Colors.blue, fontSize: 15),
        ),
      ),
        ],
      ),





    );
  }
}
