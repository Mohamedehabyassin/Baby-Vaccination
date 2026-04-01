import 'package:baby_vaccination/features/auth/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignInBloc signInBloc = context.read<SignInBloc>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo[900],
        elevation: 0,
        title: Center(child: Text("Log In")),
      ),
      backgroundColor: Colors.blue[700],
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 70, width: 200),
            Center(
              child: Container(
                height: 280,
                width: 280,
                child: CircleAvatar(
                  child: ClipOval(
                    child: new FlareActor(
                      "assets/teddy_test.flr",
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      animation: animationType,
                    ),
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 30, width: 10),
            Container(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    onChanged: (val) {
                      setState(() => _email = val);
                    },
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(Icons.email, color: Colors.white),
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      hintText: "E-mail",

                      contentPadding: EdgeInsets.all(10),
                    ),
                    controller: userController,
                    focusNode: userFocusNode,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                    endIndent: 30,
                    indent: 30,
                  ),
                  TextFormField(
                    onChanged: (val) {
                      setState(() => _password = val);
                    },
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock, color: Colors.white),
                      border: InputBorder.none,
                      hintText: "Password",
                      contentPadding: EdgeInsets.all(10),
                    ),
                    obscureText: true,
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                  ),
                ],
              ),
              height: 160,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.indigo[900],
              ),
            ),
            Container(
              width: 150,
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 70),
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () async {
                  dynamic result = await _authService
                      .signInWithEmailAndPassword(_email, _password);
                  if (result == null) {
                    setState(() {
                      animationType = 'fail';
                    });
                  }
                },
                child: Text(
                  "Log In ",
                  style: TextStyle(color: Colors.indigo[900]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
