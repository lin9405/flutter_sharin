import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('asset/diamond.png'),
                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),
            //[name]
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 12.0),
            //Sign up

            //[password]
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            ButtonBar(
              //mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                FlatButton(
                  child: Text('CANCLE'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                FlatButton(
                  child: Text('Sign up'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        //MaterialPageRoute(builder: (context) => SignUpPage())
                        MaterialPageRoute(builder: (context) => MyApp())
                    );
                  },
                ),
                RaisedButton(
                  child: Text('NEXT'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sign up page',
      home: Scaffold(
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {

  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final cpasswordController = TextEditingController();
  final emailAddrController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Username
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Username',
                filled: true,
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter Username';
                }
              },
            ),
            SizedBox(height: 13.0),

            //Password
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter Password';
                }
              },
              obscureText: true,
            ),
            SizedBox(height: 13.0),

            TextFormField(
              controller: cpasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                filled: true,
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter Confirm Password';
                }
              },
              obscureText: true,
            ),
            SizedBox(height: 13.0),

            TextFormField(
              controller: emailAddrController,
              decoration: InputDecoration(
                labelText: 'Email Address',
                filled: true,
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter Address';
                }
              },
            ),
            SizedBox(height: 13.0),

            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('Good job!')));
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



/*
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final cpasswordController = TextEditingController();
  final emailAddrController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 26.0),
            //[name]
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 13.0),
            //[password]
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 13.0),
            //[confirm password]
            TextField(
              controller: cpasswordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Confirm Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 13.0),
            //[Email Address]
            TextField(
              controller: emailAddrController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Email Address',
              ),
            ),

            TextFormField(
              validator: (value) {
                if(value.isEmpty) {
                  return 'please enter some text';
                }
              },
            ),

            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('Sign up'),
                  onPressed: () {

                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/