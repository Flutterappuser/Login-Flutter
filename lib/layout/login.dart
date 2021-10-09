
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class  login extends StatefulWidget {

  const login({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<login> {
  var _userPasswordController;
  final myController = TextEditingController();


  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  late bool  _passwordVisible = false  ;
  bool _isHidden = true;
  @override


  Widget build(BuildContext context) {
 return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,),
      body: Center(
        child: Container(
          width: 350,
            height : 500,


          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              Text(
                'Login'
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search term'
                ),
              ),
              SizedBox(
                height: 50,
              ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: _userPasswordController,
              obscureText: !_passwordVisible,//This will obscure text dynamically
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                // Here is key idea
                suffixIcon: IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    _passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      _passwordVisible = !_passwordVisible;



                    });
                  },
                ),
              ),
            ),
              SizedBox(
                height: 50,
              ),
              Text(
                  'Login'
              ),

              TextField(
                controller: myController,
                onChanged: (text) {
                  print('First text field: $text');
                },


              )




            ],),
          ),
        ),
      ),
    );

  }

}

